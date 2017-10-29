class CreateHaikus < ActiveRecord::Migration
  def change #changeで作成するカラムが指定できる
    create_table :haikus do |t|
			t.string   :name
			t.text     :haiku
			t.timestamps
    end
  end
end
