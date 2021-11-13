class Country < ApplicationRecord
  has_many :players
  has_many :leagues
end
