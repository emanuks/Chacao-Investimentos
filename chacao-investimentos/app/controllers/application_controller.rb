class ApplicationController < ActionController::Base
  def landing
  end

  def require_your_self
    unless current_user.id == params[:id].to_i
      restrict_access
    end
  end

  private

  def restrict_access
    flash[:info] = 'Não permitido'
    redirect_to root_path
  end
end
