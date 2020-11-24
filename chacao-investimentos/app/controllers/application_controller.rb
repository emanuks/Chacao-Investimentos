class ApplicationController < ActionController::Base
  def landing
  end

  def require_your_self
    if params[:controller] == "application_fis"
      application = ApplicationFi.find(params[:id])
    elsif params[:controller] == "application_ifs"
      application = ApplicationIf.find(params[:id])
    elsif params[:controller] == "application_dts"
      application = ApplicationDt.find(params[:id])
    end
    unless current_user.id == application.user.id
      restrict_access
    end
  end

  def is_admin?
    current_user.is_admin
  end

  def require_admin
    restrict_access unless current_user&.is_admin?
  end

  def require_user
    restrict_access if current_user&.is_admin?
  end

  def is_user?
    not current_user.is_admin
  end

  private

  def restrict_access
    flash[:info] = 'Não permitido'
    redirect_to root_path
  end
end
