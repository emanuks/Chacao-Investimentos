class DirectTreasuresController < ApplicationController
  before_action :set_direct_treasure, only: [:show, :edit, :update, :destroy]

  # GET /direct_treasures
  # GET /direct_treasures.json
  def index
    @direct_treasures = DirectTreasure.all
  end

  # GET /direct_treasures/1
  # GET /direct_treasures/1.json
  def show
  end

  # GET /direct_treasures/new
  def new
    @direct_treasure = DirectTreasure.new
  end

  # GET /direct_treasures/1/edit
  def edit
  end

  # POST /direct_treasures
  # POST /direct_treasures.json
  def create
    @direct_treasure = DirectTreasure.new(direct_treasure_params)

    respond_to do |format|
      if @direct_treasure.save
        format.html { redirect_to @direct_treasure, notice: 'Direct treasure was successfully created.' }
        format.json { render :show, status: :created, location: @direct_treasure }
      else
        format.html { render :new }
        format.json { render json: @direct_treasure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /direct_treasures/1
  # PATCH/PUT /direct_treasures/1.json
  def update
    respond_to do |format|
      if @direct_treasure.update(direct_treasure_params)
        format.html { redirect_to @direct_treasure, notice: 'Direct treasure was successfully updated.' }
        format.json { render :show, status: :ok, location: @direct_treasure }
      else
        format.html { render :edit }
        format.json { render json: @direct_treasure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /direct_treasures/1
  # DELETE /direct_treasures/1.json
  def destroy
    @direct_treasure.destroy
    respond_to do |format|
      format.html { redirect_to direct_treasures_url, notice: 'Direct treasure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_direct_treasure
      @direct_treasure = DirectTreasure.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def direct_treasure_params
      params.require(:direct_treasure).permit(:index, :name, :due_date, :tax, :value)
    end
end
