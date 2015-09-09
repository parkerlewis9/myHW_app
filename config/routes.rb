Rails.application.routes.draw do
  mount_devise_token_auth_for 'Teacher', at: 'auth'

  mount_devise_token_auth_for 'Student', at: 'auth'
  as :student do
    # Define routes for Student within this block.
  end
  root 'statics#index'
    # get "/omniauth/:provider/callback" => 'sessions#create'
end
