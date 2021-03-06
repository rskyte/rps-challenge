feature 'Game over' do

  before { srand(2) }

  scenario 'when a player wins a gameover screen should be displayed' do
    sign_in_and_play_solo
    win_game
    expect(page).to have_content 'You win. Great show!... you champion you!'
  end

  scenario 'player has the option to play again' do
    sign_in_and_play_solo
    win_game
    click_button 'Play Again?'
    expect(page).to have_current_path '/'
  end

end
