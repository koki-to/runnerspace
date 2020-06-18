class AddRunToTweets < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :run, :float
  end
end
