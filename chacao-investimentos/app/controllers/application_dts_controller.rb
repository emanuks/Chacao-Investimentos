class ApplicationDtsController < ApplicationController
  before_action :set_application_dt, only: [:show, :edit, :update, :destroy]
  before_action :require_user, only: [:new, :create]
  before_action :require_your_self, only: [:destroy]
  before_action :require_login, only: [:show]
  # GET /application_dts
  # GET /application_dts.json
  def index
    @application_dts = ApplicationDt.all
  end

  # GET /application_dts/1
  # GET /application_dts/1.json
  def show
  end

  # GET /application_dts/new
  def new
    @application_dt = ApplicationDt.new
  end

  # GET /application_dts/1/edit
  def edit
  end

  # POST /application_dts
  # POST /application_dts.json
  def create
    @application_dt = ApplicationDt.new(
        user_id: current_user.id,
        direct_treasure_id: params[:object_id],
        quantity: params[:quantity]
    )

    respond_to do |format|
      if @application_dt.save
        format.html { redirect_to @application_dt, notice: 'Application dt was successfully created.' }
        format.json { render :show, status: :created, location: @application_dt }
      else
        format.html { render :new }
        format.json { render json: @application_dt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /application_dts/1
  # PATCH/PUT /application_dts/1.json
  def update
    respond_to do |format|
      if @application_dt.update(application_dt_params)
        format.html { redirect_to @application_dt, notice: 'Application dt was successfully updated.' }
        format.json { render :show, status: :ok, location: @application_dt }
      else
        format.html { render :edit }
        format.json { render json: @application_dt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /application_dts/1
  # DELETE /application_dts/1.json
  def destroy
    @application_dt.destroy
    respond_to do |format|
      format.html { redirect_to applications_path, notice: 'Application dt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_application_dt
      @application_dt = ApplicationDt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def application_dt_params
      params.require(:application_dt).permit(:quantity, :user_id, :direct_treasure_id)
    end
end
