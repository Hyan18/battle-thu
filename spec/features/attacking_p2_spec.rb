feature "attacking player 2" do
  scenario "visit play page and click attack button" do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content("Successful attack!")
  end

  scenario "reduce player 2's hp" do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content("Harrison's HP: 90/#{Player::DEFAULT_HP}")
  end
end