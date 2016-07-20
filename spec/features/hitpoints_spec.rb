require 'spec_helper'

feature 'Hitpoints' do
  scenario "player1 views player2's hitpoints" do
    sign_in_and_play
    expect(page).to have_content("Mali 100hp")
  end
end
