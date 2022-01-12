

post '/mygarden' do
  

    create_garden( params[:image_url], params[:sunlight], params[:fertilizer], params[:moisture], params[:comments],params[:flowers], session[:user_id])
    
  
    redirect '/mygarden'
  end



   # new garden
get '/garden/new' do
  redirect 'login' unless logged_in?

  erb(:new_garden)
end



  get '/garden/:id' do
    
    result = find_garden_by_id(params['id'])
    @garden = result
  
  
   erb(:garden)
  end
  

  get '/garden/:id/edit' do
  
    result = find_garden_by_id( params[:id] )
    @garden = result[0]
    
    erb(:edit_garden)
  end

  # edit garden
  put '/garden/:id' do
      
    update_garden(params['image_url'], params['sunlight'], params['fertilizer'], params['moisture'], params['comments'], params['id'])
    
    redirect '/mygarden' 
  end

 

get '/mygarden' do
  redirect 'login' unless logged_in?
  
  results = all_flowers_garden(session[:user_id])
 
  
  
  
  result = current_user(session[:user_id])
  @user = result[0]

 
  erb(:my_garden, locals: {gardens: results})
end






delete '/garden/:id' do

  delete_garden(params['id'])

  redirect '/mygarden'
end



# log out
get '/session' do
  session[:user_id] = nil

  redirect '/login'
end