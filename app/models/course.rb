class Course < ActiveRecord::Base
	belongs_to :user

	validates :title, :presence => true
	validates :description, :presence => true
	validates :cost, :presence => true, :numericality => {:greater_than_or_equal_to => 0}

	# def total_cost
	# 	cost * 1.10
	# end
end
