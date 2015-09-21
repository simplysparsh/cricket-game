class Batsman 

	def initialize(name)
		@name = name
		@spin_skill_level = rand 5
		@bounce_skill_level = rand 5  
	end

	attr_reader :name

	def play(ball)
        outcome = Outcome.new 
		if outcome_is_out? ball
			outcome.mark_as_out
		else 
			outcome.score = rand(7)   
		end
		outcome
	end 

	private

	def skill_level(ball)
		case ball
		when "spin" then @spin_skill_level
		when "bouncer" then @bounce_skill_level
		end
	end	

	def outcome_is_out?(ball)
		rand(skill_level(ball)) == 1
	end

end 