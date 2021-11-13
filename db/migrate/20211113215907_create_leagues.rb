class CreateLeagues < ActiveRecord::Migration[6.0]
  def change
    create_table :leagues do |t|
      t.string :name, null: false
      t.integer :tier, null: false
      t.belongs_to :country, null: false

      t.timestamps
    end
  end
end
