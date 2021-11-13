class AddPlayersToCountry < ActiveRecord::Migration[6.0]
  def change
    add_reference :players, :country, foreign_key: true
  end
end
