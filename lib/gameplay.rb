require './batsman.rb' 
require './baller.rb'
			
batsman = Batsman.new "Rahul" 
bowler  = Bowler.new "Brett"

over         = 6								  # In cricket 6 balls make an over
balls_thrown = 0
total_score  = 0

while balls_thrown < over

	turn_outcome = batsman.play (bowler.throw_ball)
	puts "Turn outcome: #{turn_outcome} "

	if turn_outcome == "out"                      # What if I want to make this a function 'stop_if_out'? How to return 'break'? 

		puts "Total Score is #{total_score}"	  # So we don't need a block statement under 'if' ? 
		break

	else
	    total_score = total_score + turn_outcome.to_i
	end

	puts "Total Score is #{total_score} \n\n"

	balls_thrown = balls_thrown + 1

end

