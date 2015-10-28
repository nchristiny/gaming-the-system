class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.references :friend, null: false
      t.references :user, null: false
      t.boolean :accepted, :default => 0
      t.timestamps null: false
    end
  end
end
