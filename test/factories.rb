FactoryGirl.define do  factory :enrollment do
    
  end

  factory :course do
  	title "Test Course Title"
  	description "Testing "
  	cost 0
  end

  factory :lesson do
    title "Test Lesson Title"
    subtitle "Test Lesson Subtitle"
  end

  factory :section do
    title "Test Section Title"
  end

	factory :user do
		sequence :email do |n|
			"zinsert#{n}@gmail.com"
		end
		password "codemonkey"
		password_confirmation "codemonkey"
	end
end