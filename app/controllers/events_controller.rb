class EventsController < ApplicationController
	def new
		@event = Event.new
	end

	def create
		@event = current_user.events.build(event_params)
		@event.date = Date.strptime(@event.event_date, '%m/%d/%Y')
		if @event.save
			
			redirect_to events_path
		else
			render 'new'
		end
	end

	def index
		#@events = Event.all.order(created_at: :desc)
		@upcoming_events = Event.upcoming
		@previous_events = Event.past
	end

	def show
		@event = Event.find(params[:id])
		@attendees = @event.attendees
	end

	private 

	def event_params
  		params.require(:event).permit(:name, :description, :location, :event_date, :event_time)
 	 end
end
