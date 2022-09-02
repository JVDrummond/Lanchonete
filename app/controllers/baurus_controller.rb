class BaurusController < ApplicationController
  before_action :set_bauru, only: %i[ show edit update destroy ]

  # GET /baurus or /baurus.json
  def index
    @baurus = Bauru.all
  end

  # GET /baurus/1 or /baurus/1.json
  def show
  end

  # GET /baurus/new
  def new
    @bauru = Bauru.new
  end

  # GET /baurus/1/edit
  def edit
  end

  # POST /baurus or /baurus.json
  def create
    @bauru = Bauru.new(bauru_params)

    respond_to do |format|
      if @bauru.save
        format.html { redirect_to bauru_url(@bauru), notice: "Bauru criado com sucesso!." }
        format.json { render :show, status: :created, location: @bauru }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bauru.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baurus/1 or /baurus/1.json
  def update
    respond_to do |format|
      if @bauru.update(bauru_params)
        format.html { redirect_to bauru_url(@bauru), notice: "Bauru atualizado com sucesso!" }
        format.json { render :show, status: :ok, location: @bauru }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bauru.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baurus/1 or /baurus/1.json
  def destroy
    @bauru.destroy

    respond_to do |format|
      format.html { redirect_to baurus_url, notice: "Bauru excluído com sucesso!" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bauru
      @bauru = Bauru.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bauru_params
      params.require(:bauru).permit(:bauru, :bauru_id)
    end
end
