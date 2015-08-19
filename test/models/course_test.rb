require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  test "validate cost not be negative" do
  	assert_no_difference 'Course.count' do
    	Course.create(:title => "Test title", :description => "test description", :cost => -2)
    end
  end

  test "validate cost can be zero" do
  	assert_difference 'Course.count' do
    	Course.create(:title => "Test title", :description => "test description", :cost => 0)
    end
  end

  # test "validate cost plus 10%" do
  # 		course = Course.create(:title => "Test title", :description => "test description", :cost => 100.00)
  # 		assert_equal 110.00, course.total_cost
  # end
end
