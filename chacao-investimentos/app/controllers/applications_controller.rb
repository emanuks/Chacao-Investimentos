class ApplicationsController < ApplicationController

  def index
    if current_user&.is_admin
      @application_dts = ApplicationDt.all
      @application_ifs = ApplicationIf.all
      @application_fis = ApplicationFi.all
    elsif current_user
      @application_dts = current_user.application_dts
      @application_ifs = current_user.application_ifs
      @application_fis = current_user.application_fis
    end
  end
end
