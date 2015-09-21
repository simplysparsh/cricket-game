require './batsman.rb' 
require './baller.rb'
require './outcome.rb'
require './scorecard.rb'
			
batsman = Batsman.new "Rahul" 
bowler  = Bowler.new "Brett"
score_card = ScoreCard.new(batsman, bowler)

while ! score_card.over?

	turn_outcome = batsman.play (bowler.throw_ball)
	score_card << turn_outcome
	puts "Turn outcome: #{turn_outcome} "

	if turn_outcome.out?                      
		puts "Total Score is #{score_card.total_score}"	  
		break
    end

	puts "Total Score is #{score_card.total_score} \n\n"

end