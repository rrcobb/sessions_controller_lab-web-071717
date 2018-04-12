class SessionsController < ApplicationController
  def new
  end

  def create
    name = params[:name]
    if name.presence
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to :new
    end
  end

  def destroy
    session.delete :name
    redirect_to :new
  end
end
