
class Question
	def initialize
		@value_x = (rand() * 10).to_i
		@value_y = (rand() * 10).to_i
		puts "What does #{@value_x} plus #{@value_y} equal?"
		@answer = gets.chomp
		@sum = @value_x + @value_y
	end

	def check_answer?
		@answer.to_i != @sum
		# puts "This is the answer: #{@answer}"
		# puts "This is the sum #{@sum}"
	end
end