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

end
