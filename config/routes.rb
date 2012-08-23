MicroTest::Application.routes.draw do
 resources :pages
 resources :employees

 root :to => 'pages#home'

end
