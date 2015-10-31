Rails.application.routes.draw do
  root to: 'home#game'

  get 'game', to: 'home#game'
  get 'exploreIssues', to 'home#exploreIssues'
  get 'manageLikedQuotes', to 'home#manageLikedQuotes'
  
end
