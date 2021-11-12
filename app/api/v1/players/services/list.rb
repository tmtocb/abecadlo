module V1
  module Players
    module Services
      class List
        def initialize(all_players)
          @all_players = all_players
        end

        def call
          @all_players.map do |player|
            player_structure(player)
          end
        end

        private

        def player_structure(player)
          player_entity = Entities::Player.new(player)

          {
            first_name: player_entity.first_name,
            second_name: player_entity.second_name,
            citizenship: player_entity.citizenship,
            date_of_birth: player_entity.date_of_birth,
            city_of_birth: player_entity.city_of_birth
          }
        end
      end
    end
  end
end
