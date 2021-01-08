Rails.application.routes.draw do
  get 'posts/create'
  devise_for :users
  root to: 'home#index'
  get 'home/index'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  authenticate :user do
    resources :timelines,
             only: [:index, :show],
             param: :username
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
