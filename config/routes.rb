Rails.application.routes.draw do

  resources :suggestions do
    member do
      post 'upvote'
    end
  end

  root to: 'suggestions#index'

  match 'upvote', to: 'suggestions#upvote', via: :post

end
