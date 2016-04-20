Rails.application.routes.draw do
  root 'pages#home'

  resource :survey_answers, only: [:create]
end