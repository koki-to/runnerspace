10.times do |n|
  User.create!(
    name: "テスト太郎#{n + 1}",
    email: "test#{n + 1}@test.com",
    password: "kokikoki",
  )
end
User.all.each do |user|
  user.tweets.create!(
    title: 'タイトル',
    text: 'テキストテキストテキストテキスト'
  )
end