require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe "#create" do
    if "必須項目が入力されていれば" do
      expect(build(:tweet)).to be_valid
    end
  end
end