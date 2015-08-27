FactoryGirl.define do  factory :enrollment do
    
  end

  factory :course do
  	title "Test Title"
  	description "Testing "
  	cost 0
  end

  factory :lesson do
    
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