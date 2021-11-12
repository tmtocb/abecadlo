RSpec.describe V1::Players::Services::List do
  subject { described_class.new(players).call }

  describe '#call' do
    context 'when players are not present' do
      let!(:players) { [] }

      it 'returns empty array' do
        expect(subject).to eq([])
      end
    end

    context 'when players are present' do
      let!(:player_1) { create(:player, first_name: 'Ricardo', second_name: 'Pezet', citizenship: 'French', date_of_birth: Date.commercial(2001,5,6), city_of_birth: 'Washington') }
      let!(:player_2) { create(:player, first_name: 'Pele', second_name: 'Zidane', citizenship: 'German', date_of_birth: Date.commercial(2001,5,6), city_of_birth: 'New York') }
      let!(:players) { [player_1, player_2] }

      it 'returns first name of provided player' do
        expect(subject).to eq(
          [
            { first_name: 'Ricardo', second_name: 'Pezet', citizenship: 'French', date_of_birth: Date.commercial(2001,5,6), city_of_birth: 'Washington' },
            { first_name: 'Pele', second_name: 'Zidane', citizenship: 'German', date_of_birth: Date.commercial(2001,5,6), city_of_birth: 'New York' }
          ]
        )
      end
    end
  end
end
