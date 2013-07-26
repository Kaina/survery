##IF TIME ADD ERROR MESSAGES FOR SIGN IN WHERE USER EXISTS OR PW IS WRONG

get '/' do
 #Show all users if user is signed in
 @users = User.all
  erb :index
end

#----------- SESSIONS -----------

get '/sessions/new' do
  # render sign-in page 
  erb :sign_in
end

post '/sessions' do
  # sign-in
  @user = User.find_by_email(params[:email])
  if @user.authenticate(params[:password])
   @users = User.all
   session[:id] = @user.id
   erb :index
  else
    redirect '/'
  end 
end

delete '/sessions/:id' do
  # sign-out -- invoked via AJAX
  session[:id] = nil
  redirect '/'
end

#----------- USERS -----------

get '/users/new' do
  # render sign-up page
  erb :sign_up
end

post '/users' do
  # sign-up a new user
  p params
  @user = User.new(params)
  if @user.save
    session[:id] = @user.id
    erb :index
  else
    redirect '/'
  end
end
