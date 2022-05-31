describe '#current_turn' do
    it 'starts as player 1' do
        game = Game.new('player_1', 'player_2')
        expect(game.current_turn).to eq 'player_1'
    end


    it 'switches turns' do
        game = Game.new('player_1', 'player_2')
        game.switch_turns
        expect(game.current_turn).to eq 'player_2'
    end
end