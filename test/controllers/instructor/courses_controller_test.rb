require 'test_helper'

class Instructor::CoursesControllerTest < ActionController::TestCase
  test "course show page" do 
  	  user = FactoryGirl.create(:user)
  	  sign_in user
  	  
   	  course = Course.create(:title => "Test Course", :description => "A sample course for testing", :cost => "25.00")
   	  get :show, :id => course.id
   	  assert_response :success
   end
end
