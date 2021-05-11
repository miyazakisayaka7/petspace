class CreateGrows < ActiveRecord::Migration[6.0]
  def change
    create_table :grows do |t|
      t.string :height,            null: false
      t.string :weight,            null: false
      t.references :pet,           foreign_key: true
      t.timestamps
    end
  end
end
