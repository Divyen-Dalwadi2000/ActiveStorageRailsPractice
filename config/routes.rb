Rails.application.routes.draw do
  root "pages#home"
  devise_for :users
  # add new feature 
end
