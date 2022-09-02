class QuantidadesController < ApplicationController
  before_action :set_quantidade, only: %i[ show edit update destroy ]
  

  # GET /quantidades or /quantidades.json
  def index
    @quantidades = Quantidade.all
  end

  # GET /quantidades/1 or /quantidades/1.json
  def show
  end

  # GET /quantidades/new
  def new
    @quantidade = Quantidade.new
  end

  # GET /quantidades/1/edit
  def edit
  end

  # POST /quantidades or /quantidades.json
  def create
    @quantidade = Quantidade.new(quantidade_params)

    respond_to do |format|
      if @quantidade.save
        format.html { redirect_to quantidade_url(@quantidade), notice: "Quantidade criada com sucesso!" }
        format.json { render :show, status: :created, location: @quantidade }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quantidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quantidades/1 or /quantidades/1.json
  def update
    respond_to do |format|
      if @quantidade.update(quantidade_params)
        format.html { redirect_to quantidade_url(@quantidade), notice: "Quantidade atualizada com sucesso!." }
        format.json { render :show, status: :ok, location: @quantidade }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quantidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quantidades/1 or /quantidades/1.json
  def destroy
    @quantidade.destroy

    respond_to do |format|
      format.html { redirect_to quantidades_url, notice: "Quantidade excluída com sucesso!." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quantidade
      @quantidade = Quantidade.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quantidade_params
      params.require(:quantidade).permit(:quantidade)
    end
end
