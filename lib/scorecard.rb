class ScoreCard

	def initialize(batsman, bowler)
		@batsman = batsman           # We did not use these did we? Where could we possibly do ? 
		@bowler = bowler
		@outcomes = []
	end

	attr_reader :batsman, :bowler  #Gives us getter functions for instance variables-batsman and bowler

	def <<(outcome)
		@outcomes << outcome
		if number_of_balls_thrown > 6
			raise ArgumentError, "There can only be a maximum of 6 balls thrown in an over"
		end
	end

	def total_score
		score = 0
		@outcomes.each do |outcome|
			score = score + outcome.score
		end
		score
	end

	def number_of_balls_thrown
		@outcomes.length
	end

	def over?
		number_of_balls_thrown >= 6  #Will this return true/false? 
	end
end	