Todo::Application.routes.draw do
  resources :tasks do
    member do
      post :mark_done
    end
  end

  root :to => 'site#home'
end
