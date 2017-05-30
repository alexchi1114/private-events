class InvitesController < ApplicationController
	def create
		@event = Event.find(params[:invite][:attended_event_id])
		current_user.invites.create(attended_event_id: @event.id)
		redirect_to @event
	end

	def show
	end

	def new
		@invite = Invite.new
	end
end
