require 'pry'


post '/mygarden' do
  
    create_garden(params[:name], params[:image_url], params[:Sunlight], params[:fertilizer], params[:moisture], params[:comments],session[:user_id], params[:flowers] )
    (name, image_url, sunlight, fertilizer, moisture, comments, flowers, user_id)
  
    redirect '/mygarden'
  end


  get '/garden/:id/edit' do
  
    result = find_garden_by_id( params[:id] )
    @garden = result[0]
    
    erb(:edit_garden)
  end

  # edit garden
  put '/garden/:id' do
      
    update_garden(params[:name], params[:image_url], params[:Sunlight], params[:fertilizer], params[:moisture], params[:id])
    
    redirect '/mygarden'
  end

  # new garden
get '/garden/new' do
  redirect 'login' unless logged_in?

  erb(:"new_garden")
end

get '/mygarden' do
  redirect 'login' unless logged_in?
  
  results = all_flowers_garden(session[:user_id])
  puts results
  
  
  
  result = current_user(session[:user_id])
  @user = result

  erb(:my_garden, locals: {flowers: results})
  
end


get '/garden/:id' do
    
  result = find_garden_by_id(params[:id])
  @garden = result

  erb(:garden)
   

end



 # add flower to garden
 get '/garden/new' do
  redirect 'login' unless logged_in?

  erb(:new_garden)
end


delete '/garden/:id' do
  
  sql = "delete from mygarden where id = #{ params[:id] };"
 
  db_query(sql) 

  redirect '/mygarden'
end



# log out
get '/session' do
  session[:user_id] = nil

  redirect '/'
end