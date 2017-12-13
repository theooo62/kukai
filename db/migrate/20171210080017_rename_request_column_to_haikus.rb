class RenameRequestColumnToHaikus < ActiveRecord::Migration
  def change
    # rename_column :haikus, :haiku, :text
  end
end

#開発環境のデータベースのhaikusテーブルのカラム名だけ変わっていたので変更のため作成
#ローカルで実行すると多分エラーになる
#今後migration実行する時　注意
