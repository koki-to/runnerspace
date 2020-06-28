require 'rails_helper'

describe Tweet do
  describe '#create' do
    it "入力必須項目が設定されていれば投稿できること" do
      expect(build(:tweet)).to be_valid
    end

    it "画像が設定されていなくても投稿できること" do
      expect(build(:tweet, image: nil)).to be_valid
    end

    it "走行距離を設定しなくても投稿できる事" do
      expect(build(:tweet, run:nil)).to be_valid
    end

    it "タイトルが設定されていなければ無効であること" do
      tweet = build(:tweet, title: nil)
      tweet.valid?
      expect(tweet.errors[:title]).to include("を入力してください")
    end

    it "タイトルが10文字を超えると無効であること" do
      tweet = build(:tweet, title: "aaaaaaaaaaa")
      tweet.valid?
      expect(tweet.errors[:title]).to include("は10文字以内で入力してください")
    end

    it "内容がなければ無効であること" do
      tweet = build(:tweet, text: nil)
      tweet.valid?
      expect(tweet.errors[:text]).to include("を入力してください")
    end

    it "内容が200字を超えていれば無効であること" do
      tweet = build(:tweet, text: "a" * 201)
      tweet.valid?
      expect(tweet.errors[:text]).to include("は200文字以内で入力してください")
    end

    it "走行距離が100km超えていれば無効であること" do
      tweet = build(:tweet, run: "101")
      tweet.valid?
      expect(tweet.errors[:run]).to include("は100以下の値にしてください")
    end

    it "走行距離が0km以下ならば無効であること" do
      tweet = build(:tweet, run: "-1")
      tweet.valid?
      expect(tweet.errors[:run]).to include("は0以上の値にしてください")
    end

    it "ユーザーidがなければ無効であること" do
      tweet = build(:tweet, user_id: nil)
      tweet.valid?
      expect(tweet.errors[:user]).to include("を入力してください")
    end
  end
end