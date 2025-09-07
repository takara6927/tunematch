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

  # Devise
  devise_for :users
  resources :users, only: [:show]

  # 診断ページ用ルート
  get "diagnoses/start",      to: "diagnoses#start"
  get "diagnoses/questions",  to: "diagnoses#questions"
  get  "diagnoses/result",  to: "diagnoses#result", as: "diagnoses_result_get"
  post "diagnoses/result",  to: "diagnoses#result", as: "diagnoses_result"

  # いいね機能
  resources :tweets do
    resources :likes, only: [:create, :destroy]
  end

  # PWA関連
  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest"       => "rails/pwa#manifest",       as: :pwa_manifest

  # その他ルート
  get "hello/index" => "hello#index"
  get "hello/link"  => "hello#link"

  get "mbti",       to: "mbti#index", as: :mbti_index
  get "mbti/:code", to: "mbti#show",  as: :mbti_show
end
  