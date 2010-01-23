Application.class_eval do
  
  get '/sessions/new' do
    haml :log_in, :layout => :layout
  end
  
  post '/sessions/create' do
    @user_session = UserSession.new(params[:session])
    if @user_session.save
      redirect '/'
    else
      redirect '/sessions/new'
    end
  end
  
  get '/sessions/destroy' do
    current_user_session.destroy
    redirect '/sessions/new'
  end
end