class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :first_name, null: false
      t.string :second_name, null: false
      t.datetime :date_of_birth, null: false
      t.string :city_of_birth, null: false
      t.string :citizenship, null: false

      t.timestamps
    end
  end
end
