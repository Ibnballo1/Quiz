Rails.application.routes.draw do
  resources :questions, only:[:index]

  post 'questions/submit_answer', to: 'questions#submit_answer', as: :submit_answer
  root "questions#index"
end
