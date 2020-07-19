class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.string :image
      t.string :address, null: false
      t.integer :run
      t.string :content, null: false
      t.index :name
      t.timestamps
    end
  end
end
