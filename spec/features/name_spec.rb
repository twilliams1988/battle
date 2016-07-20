feature 'Enter names' do
  scenario "User inputs their name" do
  sign_in_and_play
  expect(page).to have_content("Tim vs. Mali")
  end
end
