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

 gym_class1 = GymClass.new({
   "name" => "beginners dodgeball",
   })
 gym_class1.save
 gym_class2 = GymClass.new({
   "name" => "intermediate dodgeball",
   })
 gym_class2.save
 gym_class3 = GymClass.new({
   "name" => "advanced dodgeball",
   })
 gym_class3.save

 booking1 = Booking.new({
   "gymclass_id" => gym_class1.id, "member_id" => member1.id
   })
 booking2 = Booking.new({
   "gymclass_id" => gym_class2.id, "member_id" => member2.id
   })
 booking3 = Booking.new({
   "gymclass_id" => gym_class3.id, "member_id" => member3.id
   })














binding.pry
nil
