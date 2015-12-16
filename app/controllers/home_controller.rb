class HomeController < ApplicationController
  # authorize_resource
  $quote
  $leaders = UserStreak.getTopStreaks
  def game
  	@threeCandidates = Candidate.all.sample(3)
  	@quote = Candidate.getQuote(@threeCandidates.sample)
    $quote = @quote
    @title = "Match the Quote and Candidate"
    @name = "game"
  end

  def exploreIssues
    @issues = Issue.all.shuffle
    @name = "exploration"
    if logged_in?
      percentExplored = current_user.percent_explored
      @title = "You have explored " + (100*percentExplored.round(3)).to_s + "% of issues."
    else 
      @title = "Login to see Track Your Exploration"
    end
  end

  def manageLikedQuotes
    @name = "management"
    @title = "Manage Your Quotes"
    if logged_in?
      @quotes = current_user.liked_quotes.map{|l| l.quote}.flatten.to_a
      liked_candidates = @quotes.map{|q| q.candidate_id}
      @candidates = liked_candidates.each_with_object(Hash.new(0)){ |m,h| h[m] += 1 }.sort_by{ |k,v| -v }
      @candidateProfiles = @candidates.map{|i| i.first }.map{|id| Candidate.find(id)}.compact.to_a
      # User.first.liked_quotes.map{|l| l.quote}.flatten.to_a.compact
    end
  end

  def issueInfoTemplate
    @issue = Issue.find(params[:issue_id])
    @quotes = Quote.for_issue(params[:issue_id]).shuffle
    @title = @issue.title
    if logged_in?
      current_user.add_explored_issue(@issue.id)
    end
    # limit quotes to ones that haven't been liked by user
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
        current_user.set_end_date_of_old_streak
      end
  	else
  		@response = "Correct!"
  		if logged_in?
        if current_user.current_streak == 0
          current_user.create_new_streak
        else
  	  		current_user.update_streak
        end
	  	end
  	end
  	redirect_to game_path(correct: @correct), notice: @response
  end


  def likeQuote
    quoteID = params[:quote]
    if logged_in?
      @like = LikedQuote.new(user_id: current_user.id, quote_id: quoteID)
      if @like.save
        redirect_to issue_info_path(issue_id: params[:issue_id])
      else
        redirect_to issue_info_path(issue_id: params[:issue_id]), alert: "You've already liked this quote."
      end
    else
      redirect_to issue_info_path(issue_id: params[:issue_id]), alert: "Log in to like quotes."
    end
  end

  def dislikeQuote
    quoteToDelete = params[:quote]
    if logged_in?
      liked_quotes = current_user.liked_quotes
      quote = liked_quotes.where(quote_id: quoteToDelete).first
      quote.destroy
      redirect_to manageLikedQuotes_path, notice: "You have unliked this quote."
    end
  end

  def sources
    @sources = Quote.getSources
  end
end
