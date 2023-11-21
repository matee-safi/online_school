Rails.application.routes.draw do
  devise_for :users

  root 'pages#home'  # Replace 'pages#home' with the appropriate controller and action for your landing page

  resources :courses do
    resources :enrollments, only: [:create, :destroy]
  end

  resources :school_classes do
    resources :assignments
    resources :exams
  end

  resources :assignments do
    resources :submissions
  end

  resources :submissions do
    resources :grades
  end

  resources :certificates
  resources :user_certificates

  resources :notifications, only: [:index, :show]

  resources :exams do
    resources :exam_questions
  end

  resources :exam_questions do
    resources :exam_answers
  end

  resources :exam_submissions do
    resources :exam_answers
  end
end
