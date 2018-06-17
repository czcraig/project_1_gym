require_relative("../models/bookings")
require_relative("../models/gym_classes")
require_relative("../models/members")
require( 'pry-byebug' )

 member1 = Member.new({
   "name" => "chris"
   })

 member1.save()

 member2 = Member.new({
   "name" => "neymar"
   })

 member2.save()


 member3 = Member.new({
   "name" => "ronaldo"
   })
   
 member3.save()














binding.pry
nil
