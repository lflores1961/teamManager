class JugadoresController < ApplicationController
  before_action :set_jugador, only: [:show, :edit, :update, :destroy]

  # GET /jugadores
  # GET /jugadores.json
  def index
    @jugadores = Jugador.all
  end

  # GET /jugadores/1
  # GET /jugadores/1.json
  def show
  end

  # GET /jugadores/new
  def new
    @jugador = Jugador.new
    @categorias = Categoria.all
  end

  # GET /jugadores/1/edit
  def edit
    @categorias = Categoria.all
  end

  # POST /jugadores
  # POST /jugadores.json
  def create
    @jugador = Jugador.new(jugador_params)
    @categorias = Categoria.all
    
    respond_to do |format|
      if @jugador.save
        format.html { redirect_to jugadores_url, notice: 'Jugador was successfully created.' }
        format.json { render :show, status: :created, location: @jugador }
      else
        format.html { render :new }
        format.json { render json: @jugador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jugadores/1
  # PATCH/PUT /jugadores/1.json
  def update
    respond_to do |format|
      if @jugador.update(jugador_params)
        format.html { redirect_to jugadores_url, notice: 'Jugador was successfully updated.' }
        format.json { render :show, status: :ok, location: @jugador }
      else
        format.html { render :edit }
        format.json { render json: @jugador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jugadores/1
  # DELETE /jugadores/1.json
  def destroy
    @jugador.destroy
    respond_to do |format|
      format.html { redirect_to jugadores_url, notice: 'Jugador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jugador
      @jugador = Jugador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jugador_params
      params.require(:jugador).permit(:nombre, :numero, :categoria, :direccion, :telefono, :celPapa, :celMama, :tallaJersey, :tallaFunda)
    end
end
