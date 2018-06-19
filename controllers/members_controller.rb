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
