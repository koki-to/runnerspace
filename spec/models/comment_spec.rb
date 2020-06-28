require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe '#create' do
    it 'テキストがあれば有効' do
      expect(build(:comment)).to be_valid
    end

    it 'テキストがなければ無効' do
      comment = build(:comment, text: nil)
      comment.valid?
      expect(comment.errors[:text]).to include("を入力してください")
    end

    it 'テキストが40文字以上なら無効' do
      comment = build(:comment, text: "a" * 41)
      comment.valid?
      expect(comment.errors[:text]).to include("は40文字以内で入力してください")
    end

    it '記事のidがなければ無効' do
      comment = build(:comment, tweet_id: nil)
      comment.valid?
      expect(comment.errors[:tweet]).to include("を入力してください")
    end

    it 'ユーザーのidがなければ無効' do
      comment = build(:comment, user_id: nil)
      comment.valid?
      expect(comment.errors[:user]).to include("を入力してください")
    end
  end
end