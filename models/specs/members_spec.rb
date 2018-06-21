require("minitest/autorun")
require_relative("../members.rb")

class TestMember < MiniTest::Test

  def setup
   options = {"name" => "chris", "age" => 29}
 @member = Member.new(options)
  end

 def test_member_name
  result = @member.name()
  assert_equal("chris", result)
 end

 def test_member_age
   result = @member.age
  assert_equal(29, result)
 end
end
