class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.date :date,               null: false
      t.text :text,               null: false
      t.references :user,         foreign_key: true
      t.timestamps
    end
  end
end
