FactoryBot.define do
  factory :user do
    password = Faker::Internet.password(min_length: 6)
    name {Faker::Internet.username(specifier: 1..6)}
    email {Faker::Internet.free_email}
    image {File.open("#{Rails.root}/app/assets/images/user1.jpg")}
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
    password {password}
    password_confirmation {password}
  end
end