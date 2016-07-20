feature 'health points' do
  scenario 'view HP' do
    sign_in_and_play
    expect(page).to have_content 'Player 2: 100HP'
  end
end
