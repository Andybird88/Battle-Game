def sign_in_and_play
    visit('/')
    fill_in :player_1_name, with: 'Andy'
    fill_in :player_2_name, with: 'Jess'
    click_button 'Submit'
end