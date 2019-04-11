RiddlerAdmin::Engine.routes.draw do
  root to: "dashboard#index"

  resources :elements do
    put "sort", on: :collection
  end

  resources :preview_contexts

  resources :publish_requests do
    post "approve", on: :member
    post "publish", on: :member
  end

  resources :emails do
    get "internal_preview", on: :member
    post "send_preview", on: :member
    post "preview", on: :member
    get "preview", on: :member
    get "toggle", on: :member
  end

  resources :steps do
    put "sort", on: :collection

    get "internal_preview", on: :member
    post "preview", on: :member
    get "preview", on: :member
    get "toggle", on: :member
  end

  resources :slugs
end
