Rails.application.routes.draw do
    resources :accounts


    root to: 'welcome#index'
end
