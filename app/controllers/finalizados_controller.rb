class FinalizadosController < ApplicationController
  before_action :set_finalizado, only: %i[ show edit update destroy ]

  # GET /finalizados or /finalizados.json
  def index
    @finalizados = Finalizado.all
  end

  # GET /finalizados/1 or /finalizados/1.json
  def show
  end

  # GET /finalizados/new
  def new
    @finalizado = Finalizado.new
  end

  # GET /finalizados/1/edit
  def edit
  end

  # POST /finalizados or /finalizados.json
  def create
    @finalizado = Finalizado.new(finalizado_params)

    respond_to do |format|
      if @finalizado.save
        format.html { redirect_to finalizado_url(@finalizado), notice: "Finalizado was successfully created." }
        format.json { render :show, status: :created, location: @finalizado }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @finalizado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /finalizados/1 or /finalizados/1.json
  def update
    respond_to do |format|
      if @finalizado.update(finalizado_params)
        format.html { redirect_to finalizado_url(@finalizado), notice: "Finalizado was successfully updated." }
        format.json { render :show, status: :ok, location: @finalizado }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @finalizado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finalizados/1 or /finalizados/1.json
  def destroy
    @finalizado.destroy

    respond_to do |format|
      format.html { redirect_to finalizados_url, notice: "Finalizado was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_finalizado
      @finalizado = Finalizado.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def finalizado_params
      params.require(:finalizado).permit(:pedido)
    end
end
