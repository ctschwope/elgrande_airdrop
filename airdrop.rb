

class Board
end

class Player
  attr_reader :name, :score
  
  def initialize(player_name)
    @name = player_name
    @score = 0
  end
  
end

class Game
  attr_reader :players
  
  def initialize
    @players = []
  end
  def add_player(player)
    @players << (player)
  end
end
