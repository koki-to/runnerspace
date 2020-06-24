class AddIndexToTweets < ActiveRecord::Migration[6.0]
  def change
    add_index :tweets, :title, length: 10
  end
end
