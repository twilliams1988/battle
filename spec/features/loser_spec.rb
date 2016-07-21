feature 'Lose' do
  scenario "lose message when a player's hp reaches 0" do
    sign_in_and_play
    19.times{click_button("attack")}
    expect(page).to have_content("Tommy Loses")
  end
end
