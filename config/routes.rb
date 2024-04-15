Rails.application.routes.draw do
  devise_for :users
  root "pages#home"
  #change in feature1
end
