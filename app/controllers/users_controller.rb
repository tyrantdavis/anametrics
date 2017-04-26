class UsersController < ApplicationController
  before_action :require_sign_in

  def show
    @registered_applications = current_user.registered_applications
  end
end
