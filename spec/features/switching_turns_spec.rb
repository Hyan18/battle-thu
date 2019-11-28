feature 'Switch turns' do
  context 'seeing the current turn' do
    before do
      sign_in_and_play
    end
    scenario 'at the start of the game' do
      expect(page).to have_content "Raluca's turn"
    end

    scenario 'after player 1 attacks' do
      click_button 'Attack!'
      expect(page).not_to have_content "Raluca's turn"
      expect(page).to have_content "Harrison's turn"
    end
  end
end