class HomeController < ApplicationController
  def index
  end

  def about 
    render :about 
  end 

  def board
    render :board
  end


end
