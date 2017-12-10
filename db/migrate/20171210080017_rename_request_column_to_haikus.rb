class RenameRequestColumnToHaikus < ActiveRecord::Migration
  def change
    rename_column :haikus, :request, :text
  end
end
