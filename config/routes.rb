Rails.application.routes.draw do
  get 'haiku' => 'haiku#index'
  get 'haiku/new' => 'haiku#new' #新規作成
end
