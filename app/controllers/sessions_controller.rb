class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    if params[:name].empty? || params[:name].nil?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.clear
  end
end
