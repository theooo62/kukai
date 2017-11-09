class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string   :event_id
      t.text :event_title
      t.timestamps
    end
  end
end
