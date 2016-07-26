Rails.application.routes.draw do

  namespace :game do
    resource :galactics, only: :show
  end

  namespace :api do
    namespace :v1 do
      get :galactics
    end
  end

  get 'welcome', to: 'welcome#index'

  root to: 'game/galactics#show'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
