require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/members.rb' )
also_reload( './models/*' )

# HOMEPAGE
get '/members' do
  @members = Member.all()
  erb(:'members/index')
end

# new
get '/members/new' do
  @classes = GymClass.all()
  erb( :'members/new' )
end

# SHOW
get '/members/:id' do
  @member = Member.find(params[:id].to_i())
  erb( :'members/show' )
end

# create
post '/members' do
 @member = Member.new(params)
 @member.save
 erb( :'members/create')
end
