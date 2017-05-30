class Event < ApplicationRecord
	belongs_to :creator, :class_name => "User"
	has_many :invites, :foreign_key => :attended_event_id
	has_many :attendees, through: :invites
	#date = Date.strptime(@event_date,'%m/%d/%Y')
	#scope :upcoming, -> {where('Date.strptime(event_date, '%m/%d/%Y') >= ?', DateTime.now)}
	#scope  :past,  -> { where('date < ?', DateTime.now)}

		
end
