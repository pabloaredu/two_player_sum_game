
require_relative 'question'
require_relative 'player'

class Game
	def initialize
		@player_1 = Player.new('Player 1')
		@player_2 = Player.new('Player 2')
		@current_player = @player_1

		@game_on = true
		while @game_on do
			puts @current_player.name
			@question = Question.new
			if @question.check_answer?
				substract_life
				puts  "#{@current_player.name}: Seriously? No!", "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
			else
				puts "#{@current_player.name}: YES! You are correct.", "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
			end
			if  @current_player.lives > 0
				switch_player
				puts "---- NEW TURN ----"
			elsif @player_1.lives == 0
				puts "---- GAME OVER ----", "#{@player_2.name} wins!"
				@game_on = false
			else
				puts "---- GAME OVER ----", "#{@player_1.name} wins!"
				@game_on = false
			end
		end
	end

	# def main_loop
	# end

	def switch_player
		@current_player = @current_player == @player_1 ? @player_2 : @player_1
	end

	def substract_life
		@current_player.lives -= 1
	end
end

Game.new




















