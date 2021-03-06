Rails.application.routes.draw do
  devise_scope :user do
    root 'users/sessions#new'
  end

  devise_for :users, :controllers => {
    sessions: 'users/sessions'
  }

  resources :users, only: [:show, :edit] do
    resources :logs, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
