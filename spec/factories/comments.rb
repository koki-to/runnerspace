FactoryBot.define do
  factory :comment do
    text {"ありがとうございます"}
    user
    tweet
  end
end