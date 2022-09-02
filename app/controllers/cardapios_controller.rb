class CardapiosController < ApplicationController
  before_action :set_cardapio, only: %i[show edit update destroy ]
  before_action :set_bauru_options, only: [:new, :create, :edit, :update]
  before_action :set_quantidade_options, only: [:new, :create, :edit, :update]

  # GET /cardapios or /cardapios.json
  def index
    @cardapios = Cardapio.all
  end

  # GET /cardapios/1 or /cardapios/1.json
  def show
  end

  # GET /cardapios/new
  def new
    @cardapio = Cardapio.new
  end

  # GET /cardapios/1/edit
  def edit
  end

  # POST /cardapios or /cardapios.json
  def create
    @cardapio = Cardapio.new(cardapio_params)
   

    respond_to do |format|
      if @cardapio.save
        format.html { redirect_to cardapio_url(@cardapio), notice: "Pedido realizado com sucesso!." }
        format.json { render :show, status: :created, location: @cardapio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cardapio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cardapios/1 or /cardapios/1.json
  def update
    respond_to do |format|
      if @cardapio.update(cardapio_params)
        format.html { redirect_to cardapio_url(@cardapio), notice: "Pedido atualizado com sucesso!" }
        format.json { render :show, status: :ok, location: @cardapio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cardapio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cardapios/1 or /cardapios/1.json
  def destroy
    @cardapio.destroy

    respond_to do |format|
      format.html { redirect_to cardapios_url, notice: "Pedido excluído com sucesso!" }
      format.json { head :no_content }
    end
  end

  private
    def set_bauru_options
      @bauru_options = Bauru.all.pluck(:bauru, :id)
    end
    
    def set_quantidade_options
      @quantidade_options = Quantidade.all.pluck(:quantidade, :id)
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_cardapio
      @cardapio = Cardapio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    
    def cardapio_params
      params.require(:cardapio).permit(:cardapio, :quantidade_id, :bauru_id)
    end
end