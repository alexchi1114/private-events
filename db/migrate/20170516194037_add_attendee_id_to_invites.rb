class AddAttendeeIdToInvites < ActiveRecord::Migration[5.0]
  def change
    add_column :invites, :attendee_id, :integer
  end
end
