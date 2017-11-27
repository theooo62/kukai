Rails.application.routes.draw do
  devise_for :users
  root 'event#index' #一番最初の画面(予定)#俳句ランダム一覧
  get 'users/:id' => 'users#show' #マイページ

  resources :event do
    resources :haiku ,only: [:index, :new, :create, :edit, :update, :destroy]
  end
end
