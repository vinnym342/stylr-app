Rails.application.routes.draw do

  resources :hashtags
  resources :comments
  resources :profiles do
    resources :followers, only: [:create], on: :member
  end

  resources :professional_profiles


 get 'myprofile', to: 'profiles#mine'
  resources :conversations, except:[:new] do
    resources :reviews, only: [:new,:create,:show], on: :member
    resources :messages,only: [:create,:index], on: :member
  end
  resources :styleboards do
    # get 'like', to: 'styleboard_likes#create'
    # post 'like', to: 'styleboard_likes#update'
    # delete 'like',to: 'styleboard_likes#destroy'
    patch 'like',to: 'styleboard_likes#patch'
    resources :photos do
      resources :hashtags
      resources :comments
      patch 'like',to: 'photo_likes#patch'
    end
  end

  devise_for :users
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
