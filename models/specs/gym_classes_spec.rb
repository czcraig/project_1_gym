require("minitest/autorun")
require_relative("../gym_classes.rb")

class TestMember < MiniTest::Test

  def setup
    options = {"name" => "beginners dodgeball", "spaces_available" => 10,
    "minimum_age" => 18}
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

  def test_minimum_age
    result = @gym_class.minimum_age
    assert_equal(18, result)
  end


end
