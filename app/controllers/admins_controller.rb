class Admins::RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_admin!
end