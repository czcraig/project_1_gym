require_relative("../models/bookings")
require_relative("../models/gym_classes")
require_relative("../models/members")
require( 'pry-byebug' )

Booking.delete_all
Member.delete_all
GymClass.delete_all

 member1 = Member.new({
   "name" => "Chris Craig"
   })
 member1.save()

 member2 = Member.new({
   "name" => "Steve the Pirate"
   })
 member2.save()

 member3 = Member.new({
   "name" => "Peter La Fleur"
   })
 member3.save()

 member4 = Member.new({
   "name" => "Patches O'Houlihan"
   })
 member4.save()

 member5 = Member.new({
   "name" => "Kate Veatch"
   })
 member5.save()

 member6 = Member.new({
   "name" => "Gordon"
   })
 member6.save()

 member7 = Member.new({
   "name" => "Justin"
   })
 member7.save()

 member8 = Member.new({
   "name" => "Me'Shell Jones"
   })
 member8.save()

 member9 = Member.new({
   "name" => "White Goodman"
   })
 member9.save()

 member10 = Member.new({
   "name" => "Dwight"
   })
 member10.save()

 member11 = Member.new({
   "name" => "Owen"
   })
 member11.save()

 member12 = Member.new({
   "name" => "Fran Stalinovskovichdavidovitchsky"
   })
 member12.save()

 member13 = Member.new({
   "name" => "Blade"
   })
 member13.save()

 member14 = Member.new({
   "name" => "Lazer"
   })
 member14.save()

 member15 = Member.new({
   "name" => "Blazer"
   })
 member15.save()

 gym_class1 = GymClass.new({
   "name" => "beginners dodgeball",
   "spaces_available" => 10
   })
 gym_class1.save
 gym_class2 = GymClass.new({
   "name" => "intermediate dodgeball",
   "spaces_available" => 10
   })
 gym_class2.save
 gym_class3 = GymClass.new({
   "name" => "advanced dodgeball",
   "spaces_available" => 10
   })
 gym_class3.save

 booking1 = Booking.new({
   "gymclass_id" => gym_class1.id, "member_id" => member1.id
   })
 booking1.save
 booking2 = Booking.new({
   "gymclass_id" => gym_class2.id, "member_id" => member2.id
   })
 booking2.save
 booking3 = Booking.new({
   "gymclass_id" => gym_class3.id, "member_id" => member3.id
   })
 booking3.save
 booking4 = Booking.new({
   "gymclass_id" => gym_class1.id, "member_id" => member4.id
   })
 booking4.save
 booking5 = Booking.new({
   "gymclass_id" => gym_class2.id, "member_id" => member5.id
   })
 booking5.save
 booking6 = Booking.new({
   "gymclass_id" => gym_class3.id, "member_id" => member6.id
   })
 booking6.save
 booking7 = Booking.new({
   "gymclass_id" => gym_class1.id, "member_id" => member7.id
   })
 booking7.save
 booking8 = Booking.new({
   "gymclass_id" => gym_class2.id, "member_id" => member8.id
   })
 booking8.save
 booking9 = Booking.new({
   "gymclass_id" => gym_class3.id, "member_id" => member9.id
   })
 booking9.save
 booking10 = Booking.new({
   "gymclass_id" => gym_class1.id, "member_id" => member10.id
   })
 booking10.save
 booking11 = Booking.new({
   "gymclass_id" => gym_class2.id, "member_id" => member11.id
   })
 booking11.save
 booking12 = Booking.new({
   "gymclass_id" => gym_class3.id, "member_id" => member12.id
   })
 booking12.save
 booking13 = Booking.new({
   "gymclass_id" => gym_class1.id, "member_id" => member13.id
   })
 booking13.save
 booking14 = Booking.new({
   "gymclass_id" => gym_class2.id, "member_id" => member14.id
   })
 booking14.save
 booking15 = Booking.new({
   "gymclass_id" => gym_class3.id, "member_id" => member15.id
   })
 booking15.save














binding.pry
nil
