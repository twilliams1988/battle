feature 'Hitpoints' do
  scenario "player1 views player2's hitpoints" do
    sign_in_and_play
    expect(page).to have_content("Tommy 100hp")
  end
end
