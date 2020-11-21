class UserSessionsController < ApplicationController
  before_action :require_login, only: [:destroy]

  def new
    @user = User.new
  end

  def create
    if login(params[:username], params[:password])
      flash[:success] = 'Seja muito bem-vindo(a)!'
      redirect_to root_path
    else
      flash.now[:warning] = 'Dados inválidos! Tente novamente!'
      render 'new'
    end
  end

  def destroy
    logout
    flash[:notice] = 'Logout realizado com sucesso! Até breve!'
    redirect_to root_path
  end

end