class JugadoresController < ApplicationController
  before_action :set_jugador, only: [:show, :edit, :update, :destroy, :paga]
  before_action :set_tallas, only: [:new, :edit]
  before_action :set_categorias, only: [:new, :edit, :create]

  # GET /jugadores
  # GET /jugadores.json
  def index
    @jugadores = Jugador.all
  end

  # GET /jugadores/1
  # GET /jugadores/1.json
  def show
    # puts "los parametros! " + params.to_s
    @jugador = Jugador.find(params[:id])
    @pagos = @jugador.pagos

  end

  # GET /jugadores/new
  def new
    @jugador = Jugador.new
  end

  # GET /jugadores/1/edit
  def edit

  end

  # POST /jugadores
  # POST /jugadores.json
  def create
    @jugador = Jugador.new(jugador_params)

    respond_to do |format|
      if @jugador.save
        format.html { redirect_to jugadores_url, notice: 'Se ha creado exitosamente el registro del nuevo jugador.' }
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
        format.html { redirect_to jugadores_url, notice: 'Se ha modificado exitosamente el registro del jugador.' }
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
      format.html { redirect_to jugadores_url, notice: 'Se ha eliminado exitosamente el registro del jugador.' }
      format.json { head :no_content }
    end
  end

  # GET /jugadores/1/paga
  def paga

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jugador
      @jugador = Jugador.find(params[:id])
    end

    def set_categorias
      @categorias = Categoria.all
    end

    def set_tallas
      @tallas = ['XS', 'S', 'M', 'L', 'XL', 'XXL', 'XXL']
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jugador_params
      params.require(:jugador).permit(:nombre, :numero, :categoria, :direccion, :telefono, :celPapa, :celMama, :tallaJersey, :tallaFunda)
    end
end
