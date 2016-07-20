feature 'attack player' do
  scenario 'attacking player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content("Player 1 attacked Player 2!")
  end

  scenario 'hp is reduced when attacked' do
  sign_in_and_play
  click_link 'Attack'
  expect(page).to have_content("It's super effective!")
  expect(page).to have_content("Player 2 has 90HP left")
  expect(page).not_to have_content("Player 2 has 60HP left")
  end
end
