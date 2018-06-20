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
  gym_class = GymClass.find(params['gymclass_id'])
  if !gym_class.is_full?
    gym_class.book_gym_class
    booking = Booking.new(params)
    booking.save
    redirect to("/bookings")
  else
    redirect to("/bookings/error")
  end
end

get '/bookings/error' do
  erb(:'bookings/error')
end
