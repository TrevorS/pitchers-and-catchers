PitchersAndCatchers::Application.routes.draw do
  resources :teams, only: :show
  get 'landing/index'
  root to: 'landing#index'
end
