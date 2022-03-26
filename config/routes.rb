Rails.application.routes.draw do
  
  devise_for :users
  root to: 'home#index'
  post 'send-message' => 'home#sendMessage', as: :send_message

  # route for admin page
  scope module: 'admin' do
    resources :categories
    resources :blogs
    resources :tags

    get 'home-admin' => 'home#index', as: :home_admin
  end

  # route for public page
  scope module: 'public' do
    get 'about' => 'views#about', as: :about
    get 'blogs/:id/:slug' => 'views#blogItem', as: :blog_item
    get 'blogCurrentTag/:id' => 'views#blogCurrentTag', as: :blog_current_tag
    get 'search-blog' => 'views#search_blog', as: :search_blog
    get 'list-blog' => 'views#listblog', as: :list_blog
  end

end
