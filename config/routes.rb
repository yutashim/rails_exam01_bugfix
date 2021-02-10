Rails.application.routes.draw do
  resources :blogs do
    #エラーの原因: :blogを基にルーティングを生成していたため、urlがblogsコントローラを参照しなし。
    #修正の意図: :blogsに変更して、blogsコントローラに対応
    resources :comments, only: [:create, :destroy]
  end
end
