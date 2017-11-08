Rails.application.routes.draw do
  devise_for :users
  root 'haiku#main' #一番最初の画面(予定)
  get 'haiku' => 'haiku#index'#俳句ランダム一覧
  get 'haiku/new' => 'haiku#new' #新規画面
  post 'haiku' => 'haiku#create' #投稿
end
