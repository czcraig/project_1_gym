require("minitest/autorun")
require_relative("../gym_classes.rb")

class TestMember < MiniTest::Test

  def setup
    options = {"name" => "beginners dodgeball", "spaces_available" => 10}
    @gym_class = GymClass.new(options)
  end

  def test_member_name
    result = @gym_class.name()
    assert_equal("beginners dodgeball",   result)
  end

  def test_spaces_available
    result = @gym_class.spaces_available()
    assert_equal(10, result)
  end

  def test_book_gym_class
    @gym_class.book_gym_class
    result = @gym_class.spaces_available()
    assert_equal(9, result)
  end


end
