Tag.create(
  [
    { name: '走行記録' },
    { name: '運動グッズ' },
    { name: '大会記録'},
    { name: 'その他'},
  ]
)
require "securerandom"
User.create!(
  [
    {
      name:  "koki",
      email: "koki.jam.torigoshi@ezweb.ne.jp",
      image: File.open('./app/assets/images/user1.jpg'),
      introduction: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト",
      password: "kokikoki",
      password_confirmation: "kokikoki",
      admin: true
    },
  ]
)
User.create!(
  [
    {
      name:  "ゲスト",
      email: "test@example.com",
      image: File.open('./app/assets/images/user1.jpg'),
      introduction: "このユーザーは簡単ログイン専用ユーザーです。変更等はできません。",
      password: "kokikoki",
      password_confirmation: "kokikoki",
    },
  ]
)
