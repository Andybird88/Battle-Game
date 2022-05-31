feature 'to see how close I am to winning I want to see player 2 HP' do
    scenario 'player 2 hp is visable next to their name' do
        sign_in_and_play
        expect(page).to have_content 'Jess: 60HP'

    end    
end