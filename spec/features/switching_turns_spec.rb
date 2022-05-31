feature ' Switch turns' do
    scenario 'Shows that its player 1s turn at start of the game' do
       sign_in_and_play
       expect(page).to have_content("Andy's turn") 
    end

    scenario 'Shows that its p2s turn after p1 attacks' do
        sign_in_and_play
        click_button 'Attack'
        click_link 'OK'
        expect(page).not_to have_content "Andy's turn"
        expect(page).to have_content "Jess's turn"
    end
end