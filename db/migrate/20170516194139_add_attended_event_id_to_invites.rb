class AddAttendedEventIdToInvites < ActiveRecord::Migration[5.0]
  def change
    add_column :invites, :attended_event_id, :integer
  end
end
