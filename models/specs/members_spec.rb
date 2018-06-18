require("minitest/autorun")
require_relative("../members.rb")

class TestMember < MiniTest::Test

  def setup
   options = {"name" => "chris"}
 @member = Member.new(options)
  end

 def test_member_name
  result = @member.name()
  assert_equal("chris", result)
 end



end
