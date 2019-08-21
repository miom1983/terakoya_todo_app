class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :登録した人
      t.text :タスクの内容
      t.timestamp :登録日時
      t.timestamp :更新日時

      t.timestamps
    end
  end
end
