class LessonsController < ApplicationController
	before_action :authenticate_user!
	before_action :require_enrollment_to_view_lessons, :only => [:show]

	def show
	end

	private
	helper_method :current_lesson
	def current_lesson
		@current_lesson ||= Lesson.find(params[:id])
	end

	def require_enrollment_to_view_lessons
		current_course = current_lesson.section.course
		if !current_user.enrolled_in?(current_course) 
			redirect_to course_path(current_course), :alert => 'Lessons are only available to enrollees'
		end
	end
end
