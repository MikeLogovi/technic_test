Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    devise_for :users
    root 'welcome#index'
    resources :clients

  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
