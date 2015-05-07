Rails.application.routes.draw do
  root "home#index"

  get "health" => "health#index"

  # Additional routes under hear
  #-----------------------------------------------------------------------------
end
