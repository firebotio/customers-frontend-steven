Rails.application.routes.draw do
  root "home#index"

  get "health" => "health#index"

  # Additional routes under hear
  #-----------------------------------------------------------------------------
  post "home/email" => "home#email", as: :home_email
end
