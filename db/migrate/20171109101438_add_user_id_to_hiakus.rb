class AddUserIdToHiakus < ActiveRecord::Migration
  def change
    add_column :haikus, :user_id, :string
  end
end
