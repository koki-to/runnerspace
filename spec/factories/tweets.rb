FactoryBot.define do
  factory :tweet do
    title {"優勝！"}
    text {"なんとか優勝しました！"}
    image {File.open("#{Rails.root}/app/assets/images/user1.jpg")}
    run {"10"}
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
    user
  end
end