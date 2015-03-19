class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  after_filter :add_flash_to_header

  before_action :configure_permitted_parameters, if: :devise_controller?

  def add_flash_to_header
    p flash[:error]
    response.headers['X-Flash-Error'] = flash[:error] unless flash[:error].blank? || flash[:error].nil?
    response.headers['X-Flash-Warning'] = flash[:warning] unless flash[:warning].blank? || flash[:warning].nil?
    response.headers['X-Flash-Notice'] = flash[:notice] unless flash[:notice].blank? || flash[:notice].nil?
    response.headers['X-Flash-Message'] = flash[:message] unless flash[:message].blank? || flash[:message].nil?
    # make sure flash does not appear on the next page
    flash.discard
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) {|u| u.permit(:username, :password)}
  end

  def after_sign_in_path_for(resource)
    '/#post-index'
  end

  def after_sign_out_path_for(resource)
    '/#post-index'
  end
  
end
