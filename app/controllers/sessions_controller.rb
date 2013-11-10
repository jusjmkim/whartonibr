class SessionsController < Devise::SessionsController
  def create
    resource = warden.authenticate!(:scope => resource_name, :recall => "#{controller_path}#failure")
    sign_in_and_redirect(resource_name, resource)
  end

  def sign_in_and_redirect(resource_or_scope, resource=nil)
    scope = Devise::Mapping.find_scope!(resource_or_scope)
    resource ||= resource_or_scope
    sign_in(scope, resource) unless warden.user(scope) == resource
    return render :json => {:success => true, :log_out_path => destroy_user_session_path, :user_registration_path => user_registration_path, :user_email => resource.email}
  end

  def failure
    return render :json => {:success => false, :errors => ["Login failed."]}
  end

  def destroy
    signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
    set_flash_message :notice, :signed_out if signed_out && is_navigational_format?
    # generate new authenticity token after old one expires on sign out -- required for ajax signout 
    # with CSRF protection
    return render :json => {:success => true, 
                            :user_registration_path => user_registration_path,
                            :csrfToken => form_authenticity_token}
  end
end
