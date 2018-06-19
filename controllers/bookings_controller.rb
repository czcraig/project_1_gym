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
  @member = Member.all()
  @gym_class = GymClass.all()
  erb(:'bookings/index')
end

#NEW

get '/bookings/new' do
  @gym_classes = GymClass.all
  @members = Member.all
  erb( :'bookings/new')
end

#CREATE

post '/bookings' do
  booking = Booking.new(params)
  booking.save
  redirect to("/bookings")
end
