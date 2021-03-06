Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root 'welcome#index'
    devise_for :users
    resources :clients

  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
