class RegistrationsController < Devise::RegistrationsController
  def create
    build_resource(sign_up_params)
    if resource.save
      clean_up_passwords(resource)
      sign_up(resource_name, resource)
      render_user_form(resource, false)
    else
      flash[:error] = []
      resource.errors.full_messages.each do |msg|
        flash[:error].push msg
      end
      render :json => {:success => false}
    end
  end

  def render_user_form(resource, success)
    render :json => {:success => true, :log_out_path => destroy_user_session_path, :user_email => resource.email}
  end

end