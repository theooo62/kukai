class RenameRequestColumnToHaikus < ActiveRecord::Migration
  def change
    rename_column :haikus, :haiku, :text
  end
end
