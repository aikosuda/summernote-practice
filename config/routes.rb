Rails.application.routes.draw do
  resources :articles
  

  resources :blogs do
    collection do
      # タグ検索用
      post 'tag'
      # ブログ検索ページ
      get 'select'
      # ブログ検索結果ページ
      get 'search'
    end

   
  end

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
