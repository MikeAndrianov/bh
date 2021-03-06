FactoryGirl.define do  factory :quest do
    name "MyString"
description "MyString"
progres 1
  end
  
  #
  #  Sequences
  #

  #  User email sequence
  #
  sequence :email do |n|
    "anderson#{n}@gmail.com"
  end

  # Identities UID
  #
  sequence :uid do |n|
    Time.now.to_i.to_s + n.to_s
  end

  #  General name sequence
  #
  sequence :name do |n|
    "Entity #{n}"
  end

  #  General description sequence
  sequence :lorem_ipsum do |n|
    "Lorem ipsum dolor sit amet"
  end

  factory :user do
    email { generate :email }
    password "secret1234"
    password_confirmation "secret1234"
    
    before(:create) { |user| user.add_role(:manager) }
  end

  factory :company do
    name { generate :name }
  end

  factory :manager_role, class: Role do
    name "manager"
  end 

  factory :bottle do
    status "available"
  end   

end
