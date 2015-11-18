Rails.application.routes.draw do
  root to: 'things#index'

  resources :things, only: %i(index new create)
  resource :session, only: %i(new create)

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/lo"
  end
end
