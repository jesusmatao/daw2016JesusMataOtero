Rails.application.routes.draw do

  # get 'questions/index'

  # get 'questions/new'
  # get 'questions/edit'
  # get 'questions/create'
  # get 'questions/update'
  # get 'questions/destroy'

  resources :questions
  get 'quiz/index'
  post 'quiz/start'
  get 'quiz/question'
  post 'quiz/question'
  post 'quiz/answer'
  get 'quiz/end'
  post 'choices/create'
  post 'choices/destroy'
end
