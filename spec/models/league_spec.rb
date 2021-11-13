RSpec.describe League do
  describe 'database columns' do
    it { should have_db_column(:name).of_type(:string).with_options(null: false) }
    it { should have_db_column(:tier).of_type(:integer).with_options(null: false) }
    it { should have_db_index(:country_id) }
  end

  describe 'relations' do
    it { should belong_to(:country) }
  end
end
