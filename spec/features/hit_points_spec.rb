feature "Hit points" do
  let(:hit_points){double :hit_points}

 scenario 'Player 2 hit points' do
   sign_in_and_play
   expect(page).to have_content "Tommy: 100"
 end

  scenario 'Attack reduces Player 2 hit points by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Tommy: 90"
  end
end
