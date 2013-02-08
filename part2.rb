class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(player1, player2)
  h = {"P" => "R", "R" => "S", "S" => "P"}
  raise NoSuchStrategyError unless h.include? player1[1].upcase and h.include? player2[1].upcase; 
  h[player2[1].upcase] == player1[1].upcase ? player2 : player1
end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  rps_result game[0], game[1]
end

def rps_tournament_winner(tournament)
  
end 

