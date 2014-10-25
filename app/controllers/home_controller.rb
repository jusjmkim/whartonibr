class HomeController < ApplicationController
  def index
  end

  def about 
    render :about 
  end 

  def board
    render :board
  end

  def online
    @admin = Admin.new
    render :online
  end

end
