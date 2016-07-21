feature 'switch turn' do
  scenario 'player 1 switches to player 2' do
    allow(Kernel).to receive(:rand).and_return(10)
    sign_in_and_play
    click_button('Attack Tommy!')
    click_button('Attack Tim!')
    expect(page).to have_content 'Tim 90hp'
  end
end
