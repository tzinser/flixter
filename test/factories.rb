FactoryGirl.define do
	factory :user do
		sequence :email do |n|
			"zinsert#{n}@gmail.com"
		end
		password "codemonkey"
		password_confirmation "codemonkey"
	end
end