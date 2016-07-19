require 'spec_helper'

feature 'health points' do
  scenario 'view HP' do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 100HP'
  end
end
