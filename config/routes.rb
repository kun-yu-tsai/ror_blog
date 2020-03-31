Rails.application.routes.draw do
  get 'welcome/index'
  # get 'welcome/directHtml'
  get 'welcome/abcde'
  get 'welcome/notFound'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'welcome#index'

  resources :articles do
    resources :comments
  end
end
