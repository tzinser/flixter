require 'test_helper'

class Instructor::SectionsControllerTest < ActionController::TestCase
    test "fail to create section if not signed in" do 
   		assert_no_difference 'Section.count' do 
   			post :create, :course_id => create(:course).id,
   				:section => {
   					:title => "Test Section"
   				}
   			
   			end
   end
end
