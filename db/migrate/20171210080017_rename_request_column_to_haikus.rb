class RenameRequestColumnToHaikus < ActiveRecord::Migration
  def change
    rename_column :haiku, :request, :text
  end
end
