feature 'attack' do
  scenario "player 1 attacks player 2" do
    allow(Kernel).to receive(:rand).and_return(10)
    sign_in_and_play
    click_button('Attack Tommy!')
    expect(page).to have_content("Tommy 90hp")
  end
end

feature 'super attack' do
  scenario "player 1 super attacks player 2" do
    allow(Kernel).to receive(:rand).and_return(5)
    sign_in_and_play
    click_button('Super Attack Tommy!')
    expect(page).to have_content("Tommy 50hp")
  end
end

feature 'heal' do
  scenario "player 1 heals" do
    allow(Kernel).to receive(:rand).and_return(10)
    sign_in_and_play
    click_button('Heal Tim!')
    expect(page).to have_content("Tim 110hp")
  end
end

feature 'poison' do
  scenario "player 1 poisons heal" do
  sign_in_and_play
  click_button('Poison Tommy!')
  expect(page).to have_content("Tommy 100hp (poisoned)")
end
end
