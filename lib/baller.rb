class Bowler 

	def initialize (name)
		@bowler_name=name
	end

	def throw_ball

		ball_code = rand(2)

		if ball_code == 0
			'spin'
		elsif ball_code == 1 
			'bouncer'
		end

	end
end