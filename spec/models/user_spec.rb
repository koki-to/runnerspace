require 'rails_helper'
describe User do
  describe '#create' do
    it "入力必須項目が設定されていれば有効であること" do
      user = build(:user)
      expect(user).to be_valid
    end

    it "名前が設定されていなければ無効" do
      user = build(:user, name: nil)
      user.valid?
      expect(user.errors[:name]).to include("を入力してください")
    end

    it "Eメールが設定されていなければ無効" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end

    it "パスワードが設定されていなければ無効" do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end

    it "パスワードと再度入力したパスワードが一致しなければ無効" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
    end

    it "名前が6文字以上なら無効" do
      user = build(:user, name: "aaaaaaaa")
      user.valid?
      expect(user.errors[:name]).to include("は6文字以内で入力してください")
    end

    it "名前が6文字以内なら有効" do
      user = build(:user, name: "aaaaaa")
      expect(user).to be_valid
    end

    it "Eメールが重複していれば無効" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("はすでに存在します")
    end

    it "パスワードが6文字以上なら有効" do
      user = build(:user, password: "aaaaaaa", password_confirmation: "aaaaaaa")
      expect(user).to be_valid
    end

    it "パスワードが5文字以内なら無効" do
      user = build(:user, password: "aaaa", password_confirmation: "aaaa")
      user.valid?
      expect(user.errors[:password]).to include("は6文字以上で入力してください")
    end
  end
end