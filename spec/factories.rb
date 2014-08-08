# This will guess the User class
FactoryGirl.define do
  factory :medicine do
    drug_name "Alfonso Bellarus"
    brand "Doe"
  end

  # This will use the User class (Admin would have been guessed)
  factory :session do
  end
end
