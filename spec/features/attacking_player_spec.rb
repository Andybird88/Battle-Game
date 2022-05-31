feature 'so I can win a game I want to be able to attack player 2' do
    
    scenario 'Confirmation of attack appears when player attacks' do
        sign_in_and_play
        click_button 'Attack'
        expect(page).to have_content 'Andy attacked Jess!'
    end

    scenario 'Player 2 Hp is reduced by 10 when attacked ' do
        sign_in_and_play
        click_button 'Attack'
        click_link 'OK'
        expect(page).to have_content('Jess: 50HP')
        expect(page).not_to have_content('Jess: 60HP')

        
    end
end