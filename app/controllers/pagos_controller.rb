class PagosController < ApplicationController
  before_action :set_pago, only: [:show, :edit, :update, :destroy]

  # GET /pagos
  # GET /pagos.json
  def index
    @pagos = Pago.all
  end

    # GET /pagos/1
  # GET /pagos/1.json
  def show
  end

  # GET /pagos/new
  def new
    @pago = Pago.new
    @conceptos = Concepto.all
    @jugador = Jugador.find_by(id: params[:jugador_id])
  end

  # GET /pagos/1/edit
  def edit
  end

  # POST /pagos
  # POST /pagos.json
  def create
    @jugador = Jugador.find_by(id: params[:pago][:jugador_id])
    @pago = @jugador.pagos.build(pago_params)
    #@pago.jugador_id = params[:jugador_id]

    respond_to do |format|
      if @pago.save
        format.html { redirect_to jugadores_path, notice: 'Se ha registrado exitosamente el pago.' }
        format.json { render :show, status: :created, location: @pago }
      else
        format.html { render :new }
        format.json { render json: @pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pagos/1
  # PATCH/PUT /pagos/1.json
  def update
    respond_to do |format|
      if @pago.update(pago_params)
        format.html { redirect_to @pago, notice: 'Pago was successfully updated.' }
        format.json { render :show, status: :ok, location: @pago }
      else
        format.html { render :edit }
        format.json { render json: @pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pagos/1
  # DELETE /pagos/1.json
  def destroy
    @pago.destroy
    respond_to do |format|
      format.html { redirect_to pagos_url, notice: 'Se ha eliminado exitosamente el pago.' }
      format.json { head :no_content }
    end
  end

  def tarifa
    # puts params[:concept_name]
    tarifa = Concepto.find_by(name: params[:concept_name]).tarifa
    respond_to do |format|
      format.json { render json: {tarifa: tarifa} }
    end
  end

  def consol_pagos
    jugador = Jugador.find(params[:jugador])
    puts jugador
    pagos_cons = jugador.pagos.group(:concepto).sum(:cantidad)
    respond_to do |format|
      format.json { render json: {pagos_cons: pagos_cons} }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pago
      @pago = Pago.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pago_params
      params.require(:pago).permit(:concepto, :cantidad, :jugador_id)
    end
end
