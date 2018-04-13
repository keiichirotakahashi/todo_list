Rails.application.routes.draw do
  root 'home#index'
  resources :tasks, only: [:create, :edit, :update, :destroy] do
    member do
      post 'status' => 'tasks#status' #ステータス変更
    end
  end
  # 検索機能
  get 'search' => 'tasks#search'
end
