class Game

  attr_reader :choice1, :choice2

  def initialize(choice1, choice2)
    @choice1 = choice1.capitalize
    @choice2 = choice2.capitalize
  end

  def play()
    if @choice1 == @choice2
      return "Its a Draw"
    elsif @choice1 == "Rock" && @choice2 == "Paper" || @choice2 == "Rock" && @choice1 == "Paper"
      if @choice1 == "Paper"
        return "Player 1 Wins by playing Paper"
      elsif @choice2 == "Paper"
        return "Player 2 Wins by playing Paper"
      end
    elsif @choice1 == "Rock" && @choice2 == "Scissors" || @choice2 == "Rock" && @choice1 == "Scissors"
      if @choice1 == "Rock"
        return "Player 1 Wins by playing Rock"
      elsif @choice2 == "Rock"
        return "Player 2 Wins by playing Rock"
      end
    elsif @choice1 == "Scissors" && @choice2 == "Paper" || @choice2 == "Scissors" && @choice1 == "Paper"
      if @choice1 == "Scissors"
        return "Player 1 Wins by playing Scissors"
      elsif @choice2 == "Scissors"
        return "Player 2 Wins by playing Scissors"
      end
    end
  end

end
