require 'test/unit'
require '.\airdrop.rb'


class TestBoard < Test::Unit::TestCase

  def test_init
    board = Board.new
    assert_not_nil(board)
  end
  
end

class TestPlayer < Test::Unit::TestCase
  
  def test_init_name
    player = Player.new("PlayerName")
    assert_equal("PlayerName", player.name)
  end
   
end

class TestGame < Test::Unit::TestCase

  def setup
    @game = Game.new  
  end

  def add_players_to_game(num_players)
    player_num = 1
    num_players.times do 
      @game.add_player(Player.new("Player" + player_num.to_s))
      player_num +=1
    end
  end

  def test_init
    assert_not_nil(@game)
  end
  
  def test_add_player
    @game.add_player(Player.new("P1"))
    @game.add_player(Player.new("P2"))
    assert_equal(2, @game.players.count)
    assert_equal("P1", @game.players[0].name)
  end
  
  def test_hase_empty_scores
    add_players_to_game(2)
    assert_equal(0, @game.players[0].score)
    assert_equal(0, @game.players[1].score)
  end
end