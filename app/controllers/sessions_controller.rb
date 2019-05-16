class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    if params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect '/'
    end
  end

  def destroy
    session.clear
  end
end
