Rails.application.routes.draw do
  root 'home#index'
  resources :tasks, only: [:create, :edit, :update]
  # 検索機能
  get 'search' => 'tasks#search'
end
