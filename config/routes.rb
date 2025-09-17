Rails.application.routes.draw do
resources :diagnoses, only: [:index, :show], constraints: { id: /\d+/ } do
  collection do
    get  :start
    get  :questions
    post :result
  end
end

  get "pages/about"
  root "hello#index"


  devise_for :users
  resources :users, only: [:show]


  get "diagnoses/start",      to: "diagnoses#start"
  get "diagnoses/questions",  to: "diagnoses#questions"
  get  "diagnoses/result",  to: "diagnoses#result", as: "diagnoses_result_get"
  post "diagnoses/result",  to: "diagnoses#result", as: "diagnoses_result"


  resources :tweets do
    resources :likes, only: [:create, :destroy]
  end


  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest"       => "rails/pwa#manifest",       as: :pwa_manifest


  get "hello/index" => "hello#index"
  get "hello/link"  => "hello#link"

  get "mbti",       to: "mbti#index", as: :mbti_index
  get "mbti/:code", to: "mbti#show",  as: :mbti_show
end
  