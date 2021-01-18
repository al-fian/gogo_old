Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  # get 'home/index'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  authenticate :user do
    resources :timelines,
       only: [:index, :show],
       param: :username

    resources :posts, only: [:create, :show]

    resources :bonds, param: :username do
      member do
        post :follow
      end
    end
  end
  
  namespace :settings do
    resource :user, only: [:show, :update]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
