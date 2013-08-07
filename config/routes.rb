PracticeInterview::Application.routes.draw do
  devise_for :users

  authenticated do
    root to: "home#show", as: :authenticated_root
  end

  root to: "home#index"
end
