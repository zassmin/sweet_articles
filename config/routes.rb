SweetArticles::Application.routes.draw do
  # /articles/:month/:day/:year/:title
  match '/articles/:month/:day/:year/:title', to: 'articles#show', via: [:get]
  # /categories/:category_name/articles/:title
  match '/categories/:category_name/articles/:title', to: 'articles#show', via: [:get]
  # /categories/:name/articles
  match '/categories/:name/articles', to: 'articles#show', via: [:get]
  # /tag/:name/articles
  match '/tag/:name/articles', to: 'articles#show', via: [:get]

  resources :articles, only: [:new, :create]
end
