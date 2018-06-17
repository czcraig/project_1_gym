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
   # "class_time" => "19.30"
   })
 gym_class1.save
 gym_class2 = GymClass.new({
   "name" => "intermediate dodgeball",
   # "class_time" => "19.30"
   })
 gym_class2.save
 gym_class3 = GymClass.new({
   "name" => "advanced dodgeball",
   # "class_time" => "19.30"
   })
 gym_class3.save













binding.pry
nil
