feature "View hit points" do
   scenario 'Player 2 hit points' do
     sign_in_and_play
     expect(page).to have_content "Tommy: 80HP"
   end
 end
