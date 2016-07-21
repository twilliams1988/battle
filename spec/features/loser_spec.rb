feature 'Lose' do
  scenario "lose message when a player's hp reaches 0" do
    allow(Kernel).to receive(:rand).and_return(100)
    sign_in_and_play
    click_button("attack")
    expect(page).to have_content("Tommy Loses")
  end
end
