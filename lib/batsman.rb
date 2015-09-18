class Batsman 

	def initialize (name)
		@batsman_name=name
	end

	def play (ball)

		if ball == "spin"       # 5 lines with many if-else is tough. What if we had 10 types of balls?
			outcome = playSpin

		elsif ball == "bouncer"
			outcome = playBouncer
		end
		outcome.to_s

	end 

	def playSpin

		is_out = rand(2) # Batsman is not good at playing a spin ball. 

		if is_out == 1
			"out"
		else make_runs
		end
			
	end	

	def playBouncer

		is_out = rand(5) # Batsman is good at playing a bouncer. 

		if is_out == 1
			"out"
		else make_runs
		end
		
	end


	def make_runs
		score = rand(7)
	end

end 
