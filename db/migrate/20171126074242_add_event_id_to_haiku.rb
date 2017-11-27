class AddEventIdToHaiku < ActiveRecord::Migration
  def change
    add_column :haikus, :event_id, :string
  end
end
