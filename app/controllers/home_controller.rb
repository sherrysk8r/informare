class HomeController < ApplicationController
  # authorize_resource
  $quote
  def game
  	@threeCandidates = Candidate.all.sample(3)
  	@quote = Candidate.getQuote(@threeCandidates.sample)
    $quote = @quote
  end

  def exploreIssues
  end

  def manageLikedQuotes
  end

  def checkAnswer
  	@correct = params[:user_answer_id].to_s == $quote.candidate_id.to_s
    
    if logged_in?
      current_user.number_of_questions_answered += 1
      current_user.save!
    end
  	if !@correct
  		@response = Candidate.getCorrectMessage($quote.candidate_id)
      if logged_in?
        current_user.current_streak = 0
        current_user.save!
      end
  	else
  		@response = "Correct!"
  		if logged_in?
	  		current_user.current_streak += 1
        current_user.number_of_questions_correct += 1
	  		current_user.save!
	  	end
  	end
  	redirect_to game_path(correct: @correct), notice: @response
  end

  def sources
    @sources = Quote.getSources
  end
end
