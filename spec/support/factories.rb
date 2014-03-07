FactoryGirl.define do
  factory :a do
    name "Jonah"
  end

  factory :b do
  	a1_id 1
  	a2_id 2
  end
end