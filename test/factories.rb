FactoryGirl.define do  factory :lesson do
    
  end
  factory :section do
    
  end

	factory :user do
		sequence :email do |n|
			"zinsert#{n}@gmail.com"
		end
		password "codemonkey"
		password_confirmation "codemonkey"
	end
end