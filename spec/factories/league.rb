FactoryBot.define do
  factory :league do
    name { 'Ekstraklasa' }
    country_id { create(:country).id }
  end
end
