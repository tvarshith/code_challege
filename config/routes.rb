Rails.application.routes.draw do

  resources :events, only: [:create]
  resources :organizations, only: [] do
    resources :events, only: [], controller: 'organizations/events' do
      get :search_recent, on: :collection
    end
  end
end
