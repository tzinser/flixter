require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
   # Test to make sure the user must be signed in to create a new course
   # test "create not signed in" do 
   #    assert_no_difference 'Course.count' do 
   #      course = FactoryGirl.create(:course)
   #    end
   # end


    #Test to make sure the course detail page is properly displayed  
  test "course show page displays title and description" do 
  	  user = FactoryGirl.create(:user)
  	  sign_in user
  	  
   	  course = create(:course)

   	  get :show, :id => course.id
   	  assert_response :success
      assert_match /#{course.title}/, response.body
     # assert_match /#{course.description}/, response.body
   end


end
