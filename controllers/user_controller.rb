post '/signup' do
    create_users(params[:name], params[:dob], params[:origin], params[:email], params[:password])
    redirect '/' 
  end
  
  post '/login' do
    results = login_user(params[:email])
  
    if results.count == 1 && 
      BCrypt::Password.new(results[0]['password_digest']) == params[:password]
  
      session[:user_id] = results[0]['id']
  
      redirect '/'
    else
      erb(:"user/login")
    end
  end
