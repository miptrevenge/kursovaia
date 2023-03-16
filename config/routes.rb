Rails.application.routes.draw do

  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
  

    resource :password_reset, only: %i[create]

    resource :send_spravka, only: %i[create]

    resource :send_naprava, only: %i[create]
   

    get '/input', to: 'kursovaia#input'
    get '/view', to: 'kursovaia#view'
    get '/naprava', to: 'kursovaia#naprava'
    get '/otchet', to: 'kursovaia#otchet'
    get '/spravka', to: 'kursovaia#spravka'

    post '/view', to: 'kursovaia#autorize'
    root 'kursovaia#input', to: 'kursovaia#input'
  end
end
