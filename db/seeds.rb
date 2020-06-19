User.create!(name:  "管理者",
  email: "koki.jam.torigoshi@ezweb.ne.jp",
  password:  "kokikoki",
  password_confirmation: "kokikoki",
  admin: true)



Tag.create([
  { name: 'ランニングレコード' },
  { name: 'ランニングアイテム' },
  { name: 'その他'},
])
10.times do |n|
  User.create!(
  name: "テスト太郎#{n + 1}",
  email: "test#{n + 1}@test.com",
  password: "kokikoki",
  )
end
User.all.each do |user|
  user.tweets.create!(
  title: 'タイトルタイトルタイトル',
  text: 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト',
  tag_ids: "1"
  )
end