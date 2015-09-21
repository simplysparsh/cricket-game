class Outcome

	def initialize
		@is_out = false
		@score = 0
	end

	def mark_as_out
		@is_out = true
	end

	def out?
		@is_out
	end

	def score=(value)
		@score = value
	end

	def score
		@score
	end

	def to_s  				
		if out?
			"out"
		else
			@score.to_s
		end
	end

end
