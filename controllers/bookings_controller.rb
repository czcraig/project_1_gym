require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/gym_classes.rb' )
require_relative( '../models/members' )
require_relative( '../models/bookings' )
also_reload( './models/*' )

# HOMEPAGE
get '/bookings' do
  @bookings = Booking.all()
  erb(:'bookings/index')
end
