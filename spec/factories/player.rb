FactoryBot.define do
  factory :player do
    first_name { 'Little' }
    second_name  { 'Messi' }
    date_of_birth  { Date.commercial(2001,5,6) }
    city_of_birth { 'Kiev' }
    citizenship { 'Argentinian' }
    country_id { create(:country).id }
  end
end
