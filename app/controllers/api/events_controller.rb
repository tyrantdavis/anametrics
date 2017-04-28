class API::EventsController < ApplicationController
# #3
  skip_before_action :verify_authenticity_token

  def create
    registered_application = RegisteredApplication.find_by(url: request.env['HTTP_ORIGIN'])

    if registered_application.nil?
      render json: "Unregistered application", status: :unprocessable_entity
    else
      @event = registered_application.events.new(event_params)
      if @event.save!
        render json: @event, status: :created
      else
        render json: {errors: @event.errors}, status: :unprocessable_entity
      end
    end
  end

  private

  def event_params
    params.require(:event).permit(:name)
  end

end
