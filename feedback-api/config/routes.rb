Rails.application.routes.draw do
  resources :feedbacks,default: {format: :json}
end
