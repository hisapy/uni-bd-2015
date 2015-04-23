FactoryGirl.define do
  factory :user do
    sequence(:first_name){|n| "FirstName#{n}" } 
    sequence(:last_name){|n| "LastName#{n}" }
    sequence(:username){ |n| "username#{n}" }
    email{"#{first_name}.#{last_name}@test.com".downcase}
    github_url{"https://github.com/#{username}"}
  end
  
  # Usaremos esto cuando tengamos concepto de confirmacion en usuarios
  # trait :confirmed do
    # confirmed_at { Time.now }
  # end
end



    
