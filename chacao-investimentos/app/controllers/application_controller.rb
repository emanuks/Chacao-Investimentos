class ApplicationController < ActionController::Base
  def landing
  end

  def require_your
    unless current_user.id == params[:id].to_i
      restrict_access
    end
  end

  def require_your_self
    restrict_access unless current_user.id == params[:id].to_i
  end

  def require_your_self_dt
    application = ApplicationDt.find(params[:id])
    restrict_access unless current_user.id == application.user.id
  end

  def require_your_self_if
    application = ApplicationIf.find(params[:id])
    restrict_access unless current_user.id == application.user.id
  end

  def require_your_self_fi
    application = ApplicationFi.find(params[:id])
    restrict_access unless current_user.id == application.user.id
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
