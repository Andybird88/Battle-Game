require './lib/player'

describe Player do
    subject(:andy) {Player.new('Andy') }

    describe '#name' do
        it 'returns the name' do
            expect(andy.name).to eq 'Andy'
        end
    end
end