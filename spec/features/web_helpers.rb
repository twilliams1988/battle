def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Aga'
  fill_in :player_2_name, with: 'Tommy'
  click_button 'Submit'
end
