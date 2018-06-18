require("minitest/autorun")
require_relative("../gym_classes.rb")

class TestMember < MiniTest::Test

  def setup
   options = {"name" => "beginners dodgeball"}
 @gym_class = GymClass.new(options)
  end

 def test_member_name
  result = @gym_class.name()
  assert_equal("beginners dodgeball", result)
 end



end
