require("minitest/autorun")
require("minitest/rg")
require("pry")
require_relative("../models/Game")

class GameTest < Minitest::Test

  def setup

    @game1 = Game.new("Rock", "Paper")
    @game2 = Game.new("Rock", "Rock")
    @game3 = Game.new("Rock", "Scissors")
    @game4 = Game.new("Paper", "Scissors")
    @game5 = Game.new("Paper", "Rock")
    @game6 = Game.new("Scissors", "Paper")
    @game7 = Game.new("Scissors", "Rock")
    @game8 = Game.new("Rock", "Scissors")

  end

  def test_game_has_choices
    assert_equal("Rock", @game1.choice1)
    assert_equal("Paper", @game1.choice2)
  end

  def test_if_can_draw
    assert_equal("Its a Draw", @game2.play())
  end

  def test_if_paper_can_win
    assert_equal("Player 2 Wins by playing Paper", @game1.play())
    assert_equal("Player 1 Wins by playing Paper", @game5.play())
  end

  def test_if_scissors_can_win
    assert_equal("Player 2 Wins by playing Scissors", @game4.play())
    assert_equal("Player 1 Wins by playing Scissors", @game6.play())
  end

  def test_if_rock_can_win
    assert_equal("Player 2 Wins by playing Rock", @game7.play())
    assert_equal("Player 1 Wins by playing Rock", @game8.play())
  end



end
