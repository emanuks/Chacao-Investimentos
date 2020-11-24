class ApplicationFisController < ApplicationController
  before_action :set_application_fi, only: [:show, :edit, :update, :destroy]
  before_action :require_user, only: [:new, :create]
  before_action :require_your_self, only: [:destroy]
  before_action :require_login, only: [:show]

  # GET /application_fis
  # GET /application_fis.json
  def index
    @application_fis = ApplicationFi.all
  end

  # GET /application_fis/1
  # GET /application_fis/1.json
  def show
  end

  # GET /application_fis/new
  def new
    @fixed_income = FixedIncome.find(params[:fi_id])
    @application_fi = ApplicationFi.new
  end

  # GET /application_fis/1/edit
  def edit
  end

  # POST /application_fis
  # POST /application_fis.json
  def create
    @application_fi = ApplicationFi.new(
        user_id: current_user.id,
        fixed_income_id: params[:object_id],
        value: params[:value]
    )
    respond_to do |format|
      if @application_fi.save
        format.html { redirect_to @application_fi, notice: 'Application fi was successfully created.' }
        format.json { render :show, status: :created, location: @application_fi }
      else
        format.html { render :new }
        format.json { render json: @application_fi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /application_fis/1
  # PATCH/PUT /application_fis/1.json
  def update
    respond_to do |format|
      if @application_fi.update(application_fi_params)
        format.html { redirect_to @application_fi, notice: 'Application fi was successfully updated.' }
        format.json { render :show, status: :ok, location: @application_fi }
      else
        format.html { render :edit }
        format.json { render json: @application_fi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /application_fis/1
  # DELETE /application_fis/1.json
  def destroy
    @application_fi.destroy
    respond_to do |format|
      format.html { redirect_to applications_path, notice: 'Application fi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_application_fi
      @application_fi = ApplicationFi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def application_fi_params
      params.require(:application_fi).permit(:fixed_income_id, :value)
    end
end
