class ApplicationController < ActionController::Base
  def landing
  end

  def require_your_self
    unless current_user.id == params[:id].to_i
      restrict_access
    end
  end

  def require_admin
    restrict_access unless current_user&.is_admin?
  end

  def logged_in?
    restrict_access unless current_user
  end

  def is_user?
    not current_user.is_admin
  end

  private

  def restrict_access
    flash[:info] = 'Não permitido'
    redirect_to home_path
  end
end
