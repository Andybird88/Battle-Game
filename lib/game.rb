require_relative 'player'
class Game
    
    attr_reader :current_turn

    def initialize(player_1, player_2)
        @players = [player_1, player_2]
        @current_turn = player_1
    end

    def player_1
        @players.first
    end

    def player_2
        @players.last
    end

    def attack(player,move)
        p move
        if move == 'Tackle'
        player.receive_damage
        player.poisen_damage
        end
        if move == 'Flamethrower' || move == 'Hydro Pump'
            player.receive_heavy_damage
            player.poisen_damage
        end
        if move == 'Sleep Powder'
            player.sleep
            player.poisen_damage
        end
        if move == 'Poisen Powder'
            player.poisen
            player.poisen_damage
        end

    end

    def switch_turns
        @current_turn = opponent_of(current_turn)
    end

    def opponent_of(the_player)
        @players.select { |player| player != the_player }.first
    end

   attr_reader :players
end
