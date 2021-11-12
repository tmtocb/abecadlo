class PlayersController < ApplicationController
  def list
    @all_players = V1::Players::Services::List.new(all_players).call
  end

  private

  def all_players
    Player.all
  end
end
