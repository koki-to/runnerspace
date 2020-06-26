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
      name:  "マコなり社長",
      email: "koki.jam.torigoshi@ezweb.ne.jp",
      image: File.open('./app/assets/images/download.jpg'),
      introduction: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト",
      password:  "kokikoki",
      password_confirmation: "kokikoki",
      admin: true
    },
    {
      name:  "キャリー",
      email: "test1@test.com",
      image: File.open('./app/assets/images/user1.jpg'),
      introduction: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト",
      password:  "kokikoki",
      password_confirmation: "kokikoki",
    },
    {
      name:  "エリザベス",
      email: "test2@test.com",
      image: File.open('./app/assets/images/user2.jpg'),
      introduction: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト",
      password:  "kokikoki",
      password_confirmation: "kokikoki",
    },
    {
      name:  "マリアン",
      email: "test3@test.com",
      image: File.open('./app/assets/images/user3.jpg'),
      introduction: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト",
      password:  "kokikoki",
      password_confirmation: "kokikoki",
    },
    {
      name:  "ライオン",
      email: "test4@test.com",
      image: File.open('./app/assets/images/user4.jpg'),
      password:  "kokikoki",
      password_confirmation: "kokikoki",
    },
    {
      name:  "カーター",
      email: "test5@test.com",
      image: File.open('./app/assets/images/user5.jpg'),
      introduction: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト",
      password:  "kokikoki",
      password_confirmation: "kokikoki",
    },
    {
      name:  "カサンドラ",
      email: "test6@test.com",
      image: File.open('./app/assets/images/user6.jpg'),
      introduction: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト",
      password:  "kokikoki",
      password_confirmation: "kokikoki",
    },
    {
      name:  "ボブ",
      email: "test7@test.com",
      image: File.open('./app/assets/images/user7.jpg'),
      introduction: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト",
      password:  "kokikoki",
      password_confirmation: "kokikoki",
    },
  ]
)
User.all.each do |user|
  user.tweets.create!(
    [
      {
        title: '走行記録',
        text: 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト',
        tag_ids: "1",
        image: File.open('./app/assets/images/article1.jpg'),
        run: Random.rand(10) + 1,
        created_at: Time.now + Random.rand(1000),
      },
      {
        title: 'ランニングシューズ',
        text: 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト',
        tag_ids: "2",
        image: File.open('./app/assets/images/article2.jpg'),
        created_at: Time.now + Random.rand(1000),
      },
      {
        title: '大会新記録！',
        text: 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト',
        tag_ids: "3",
        image: File.open('./app/assets/images/article3.jpg'),
        run: Random.rand(40) + 1,
        created_at: Time.now + Random.rand(1000),
      },
      {
        title: '景色が綺麗だった！！',
        text: 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト',
        tag_ids: "4",
        image: File.open('./app/assets/images/article4.jpg'),
        run: Random.rand(20) + 1,
        created_at: Time.now + Random.rand(1000),
      },
    ]
  )
end