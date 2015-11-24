Rails.application.routes.draw do
  root to: 'home#game'

  get 'game', to: 'home#game'
  get 'exploreIssues', to: 'home#exploreIssues'
  get 'manageLikedQuotes', to: 'home#manageLikedQuotes'
  get 'sources', to: 'home#sources'
  get 'checkAnswer', to: 'home#checkAnswer'
  get 'issueInfo/(:issue_id)', to: 'home#issueInfoTemplate', as: :issue_info
  get 'likeQuote', to: 'home#likeQuote'

  resources :users
  resources :sessions
  
  get 'user/edit', to: 'users#edit', as: :edit_current_user
  get 'signup', to: 'users#new', as: :signup
  get 'login', to: 'sessions#new', as: :login
  get 'logout', to: 'sessions#destroy', as: :logout

end
