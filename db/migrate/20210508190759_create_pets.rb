class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name,               null: false
      t.string :sex,                null: false
      t.text :type_of_pet,          null: false
      t.date :birthday,             null: false
      t.text :color,                null: false
      t.text :hospital,             null: false
      t.text :medical_history,      null: false
      t.text :medicine,             null: false
      t.text :allergies,            null: false
      t.string :walk_time
      t.text :character
      t.string :type_of_foods
      t.string :number_of_meals
      t.string :amount_of_food
      t.references :user,           foreign_key: true
      t.timestamps
    end
  end
end
