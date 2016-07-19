require 'spec_helper'

feature 'Enter player names' do #similar to rspec's describe
  scenario "Users enter name" do #similar to rspec's it
    visit('/')
    fill_in :player_1_name, :with => "Player 1"
    fill_in :player_2_name, :with => "Player 2"
    click_button "Submit"
    expect(page).to have_content("Player 1 vs Player 2!")
  end
end
