feature 'reduce HP' do
  scenario "player 1 reduces player 2's HP by 10" do
    sign_in_and_play
    click_button("Attack Tim!")
    expect(page).to have_content "Tim 90hp"
  end
end
