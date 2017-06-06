class Event < ApplicationRecord
	belongs_to :creator, :class_name => "User"
	has_many :invites, :foreign_key => :attended_event_id
	has_many :attendees, through: :invites
	
	validates :event_date, presence: true, format: {with: /\d{2}\/\d{2}\/\d{4}/}
	#date = Date.strptime(@event_date,'%m/%d/%Y')
	scope :upcoming, -> {where('date >= ?', DateTime.now)}
	scope  :past,  -> { where('date < ?', DateTime.now)}
		
end
