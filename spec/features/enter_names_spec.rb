#require './app'
#require 'spec_helper'


feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Nik'
    fill_in :player_2_name, with: 'Tommy'
    click_button 'Submit'
    expect(page).to have_content 'Nik vs. Tommy'
  end
end
