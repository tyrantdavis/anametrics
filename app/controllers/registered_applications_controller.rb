class RegisteredApplicationsController < ApplicationController
  before_action :require_sign_in
  before_action :set_registered_application, except: [:index, :new, :create]

  def index
    @registered_applications = RegisteredApplication.all
  end

  def new
    @registered_application = RegisteredApplication.new
  end

  def create
    @registered_application = current_user.registered_applications.new(registered_application_params)

    if @registered_application.save
      flash[:notice] = "Application: \"#{@registered_application.name}\" saved successfully."
      redirect_to @registered_application
    else
      flash[:alert] = "Error registering your app. Please try again. "
      render :new
    end
  end

  def show
    # sorts events by name
    @events = @registered_application.events.group_by(&:name)
  end

  def edit
  end

  def update
    if @registered_application.update_attributes(registered_application_params)
      flash[:alert] = "Application updated."
      redirect_to @registered_application
    else
      flash[:alert] = "Error updating application. Please try again."
      render :edit
    end
  end

  def destroy
    if @registered_application.destroy
      flash[:notice] = "Application successfully deleted."
    else
      flash[:alert] = "Error deleting application. Please try again."
    end
    redirect_to :back
  end

  def registered_application_params
    params.require(:registered_application).permit(:name, :url)
  end

  def set_registered_application
    @registered_application = RegisteredApplication.find(params[:id])
  end
end
