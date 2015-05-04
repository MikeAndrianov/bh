FactoryGirl.define do
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
  end

  factory :company do
    name { generate :name }
  end


end
