Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :members, session: { sign_in: 'login'}
  resources :posts do 
    resources :comments do
      resources :replies
    end
  end
  resources :likes
  resources :dislikes
  resources :messages
  resources :friendships
  resources :charges do
    collection do
     
      #post :stripe_response
    end
  end
 match '/stripe_response', to: 'charges#stripe_response', via: [:get, :post]

end
