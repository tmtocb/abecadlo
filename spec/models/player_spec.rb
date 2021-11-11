RSpec.describe Player do
  describe 'database columns' do
    it { should have_db_column(:first_name).of_type(:string).with_options(null: false) }
    it { should have_db_column(:second_name).of_type(:string).with_options(null: false) }
    it { should have_db_column(:citizenship).of_type(:string).with_options(null: false) }
    it { should have_db_column(:date_of_birth).of_type(:datetime).with_options(null: false) }
    it { should have_db_column(:city_of_birth).of_type(:string).with_options(null: false) }
  end
end
