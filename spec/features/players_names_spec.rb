feature 'adding player names' do
    scenario 'two players can enter their names and see then on screen' do
        sign_in_and_play
        expect(page).to have_content 'Andy'


    end
end
