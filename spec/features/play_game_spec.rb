feature 'playing the game' do

  before { srand(2) }

  scenario 'each choice has a button' do
    sign_in_and_play_solo
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Scissors'
    expect(page).to have_button 'Paper'
  end

  scenario 'a confirmation message is displayed after player makes a choice' do
    sign_in_and_play_solo
    click_button 'Rock'
    expect(page).to have_content 'Player chose Rock!'
  end

  scenario 'the computer makes a choice following the player choice' do
    sign_in_and_play_solo
    click_button 'Rock'
    expect(page).to have_content 'Computer chose Rock!'
  end

  scenario 'the result (win/draw) of the round is displayed' do
    sign_in_and_play_solo
    click_button 'Rock'
    expect(page).to have_content 'Draw!'
  end

  scenario 'player scores are displayed' do
    sign_in_and_play_solo
    expect(page).to have_content 'Player wins: 0/10 Computer wins: 0/10'
  end

end
