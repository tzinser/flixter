require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  test "validate cost not be negative" do
  	assert_no_difference 'Course.count' do
    	Course.create(:title => "Test title", :description => "test description", :cost => -2)
    end
  end

  test "validate cost can be zero" do
  	assert_difference 'Course.count' do
    	FactoryGirl.create(:course)
    end
  end

  test "validate free course method" do
      course = FactoryGirl.create(:course)
      expected = true
      actual = course.free?
      assert_equal expected, actual
  end

  test "validate premium course method" do
      course = FactoryGirl.create(:course)
      expected = false
      actual = course.premium?
      assert_equal expected, actual
  end
end
