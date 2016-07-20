require 'spec_helper'

feature 'attack' do
  scenario "player 1 attacks player 2" do
    sign_in_and_play
    click_button('Attack Tim!')
    expect(page).to have_content("Tim attacks Mali!")
  end
end
