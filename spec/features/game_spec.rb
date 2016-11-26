require 'spec_helper'

feature 'game' do

  scenario 'should allow the player to pick rock paper or scissors' do
    sign_in_and_play
    choose('rock')
    click_button('play')
    expect(page).to have_content('You chose rock')
  end

  xscenario 'the game is able to choose pick rock paper or scissors' do
    sign_in_and_play
    choose('rock')
    click_button('play')
    expect(page).to have_content("Your opponent chose rock")
    # expect(["Rock","Paper","Scissors"]).to include(game.choose_hand)

  end

end
