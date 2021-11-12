module V1
  module Players
    module Entities
      class Player
        def initialize(player)
          @player = player
        end

        def first_name
          @player.first_name
        end

        def second_name
          @player.second_name
        end

        def citizenship
          @player.citizenship
        end

        def date_of_birth
          @player.date_of_birth
        end

        def city_of_birth
          @player.city_of_birth
        end
      end
    end
  end
end
