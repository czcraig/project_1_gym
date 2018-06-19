require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/gym_classes.rb' )
also_reload( './models/*' )

# HOMEPAGE
get '/gym_classes' do
  @gym_classes = GymClass.all()
  erb(:'gym_class/index')
end
