RSpec.describe Country do
  describe 'database columns' do
    it { should have_db_column(:name).of_type(:string) }
  end

  describe 'relations' do
    it { should have_many(:players) }
    it { should have_many(:leagues) }
  end
end
