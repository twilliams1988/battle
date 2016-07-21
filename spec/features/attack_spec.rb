feature 'attack' do
  scenario "player 1 attacks player 2" do
    sign_in_and_play
    click_button('Attack Tommy!')
    expect(page).to have_content("Tommy 90hp")
  end
end
