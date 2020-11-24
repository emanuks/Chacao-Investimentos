class ApplicationIfsController < ApplicationController
  before_action :set_application_if, only: [:show, :edit, :update, :destroy]
  before_action :require_user, only: [:new, :create]
  before_action :require_your_self_if, only: [:destroy]
  before_action :require_login, only: [:show]

  # GET /application_ifs
  # GET /application_ifs.json
  def index
    @application_ifs = ApplicationIf.all
  end

  # GET /application_ifs/1
  # GET /application_ifs/1.json
  def show
  end

  # GET /application_ifs/new
  def new
    @application_if = ApplicationIf.new
  end

  # GET /application_ifs/1/edit
  def edit
  end

  # POST /application_ifs
  # POST /application_ifs.json
  def create
    @application_if = ApplicationIf.new(
        user_id: current_user.id,
        investment_fund_id: params[:object_id],
        value: params[:value]
    )

    respond_to do |format|
      if @application_if.save
        format.html { redirect_to @application_if, notice: 'Application if was successfully created.' }
        format.json { render :show, status: :created, location: @application_if }
      else
        format.html { render :new }
        format.json { render json: @application_if.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /application_ifs/1
  # PATCH/PUT /application_ifs/1.json
  def update
    respond_to do |format|
      if @application_if.update(application_if_params)
        format.html { redirect_to @application_if, notice: 'Application if was successfully updated.' }
        format.json { render :show, status: :ok, location: @application_if }
      else
        format.html { render :edit }
        format.json { render json: @application_if.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /application_ifs/1
  # DELETE /application_ifs/1.json
  def destroy
    @application_if.destroy
    respond_to do |format|
      format.html { redirect_to applications_path, notice: 'Application if was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_application_if
      @application_if = ApplicationIf.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def application_if_params
      params.require(:application_if).permit(:value, :user_id, :investment_fund_id)
    end
end
