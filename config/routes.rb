Rails.application.routes.default_url_options[:host] = 'localhost:3000'


Rails.application.routes.draw do

  resources :users, only: %w[show]

  devise_for :users,
  path: '',
  path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'sessions',
    registrations: 'registrations'
  }
end
