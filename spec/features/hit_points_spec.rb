feature "View hit points" do
   scenario 'Player 2 hit points' do
     visit('/')
     fill_in :player_1_name, with: 'Nik'
     fill_in :player_2_name, with: 'Tommy'
     click_button 'Submit'
     expect(page).to have_content "Tommy: 80HP"
   end
 end
