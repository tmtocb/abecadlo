RSpec.describe V1::Players::Entities::Player do
  let!(:player) { create(:player) }

  subject { described_class.new(player) }

  describe '#first_name' do
    it 'returns first name of provided player' do
      expect(subject.first_name).to eq('Little')
    end
  end

  describe '#second_name' do
    it 'returns second name of provided player' do
      expect(subject.second_name).to eq('Messi')
    end
  end

  describe '#citizenship' do
    it 'returns citizenship of provided player' do
      expect(subject.citizenship).to eq('Argentinian')
    end
  end

  describe '#city_of_birth' do
    it 'returns city of birth of provided player' do
      expect(subject.city_of_birth).to eq('Kiev')
    end
  end

  describe '#date_of_birth' do
    it 'returns date of birth of provided player' do
      expect(subject.date_of_birth).to eq(Date.commercial(2001,5,6))
    end
  end
end
