class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    session[:name] = params[:name]
  end

  def destroy
    session.destroy :name
  end
end
