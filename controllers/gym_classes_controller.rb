require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/gym_classes.rb' )
also_reload( './models/*' )

# HOMEPAGE
get '/gym_classes' do
  @gym_classes = GymClass.all()
  erb(:'gym_classes/index')
end

# new
get '/gym_classes/new' do
  @members = Member.all()
  erb( :'gym_classes/new' )
end

# SHOW
get '/gym_classes/:id' do
  @gym_class = GymClass.find(params[:id].to_i())
  erb( :'gym_classes/show' )
end

# create
post '/gym_classes' do
 @gym_class = GymClass.new(params)
 @gym_class.save
 erb( :'gym_classes/create')
end


#delete
post '/gym_classes/:id/delete' do
gym_class = GymClass.find( params[:id] )
gym_class.delete()
redirect to '/gym_classes'
end


#update
post '/gym_classes/:id' do # update
  GymClass.new( params ).update
  redirect to '/gym_classes'
end
