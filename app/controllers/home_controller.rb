class HomeController < ApplicationController
  # authorize_resource
  def game
  	@threeCandidates = Candidate.all.sample(3)
  	@quote = Candidate.getQuote(@threeCandidates.sample)
  end

  def exploreIssues
  end

  def manageLikedQuotes
  end

  def checkAnswer
  	if params[:user_answer_id] == params[:correct_answer_id]
  		@response = Candidate.getCorrectMessage(params[:correct_answer_id])
  	else
  		@response = "Correct!"
  		current_user.current_streak += 1
  		current_user.save!
  	end
  	redirect_to game_path(@response)
  end
end
