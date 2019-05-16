class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.clear if !session[:name].nil?
  end
end
