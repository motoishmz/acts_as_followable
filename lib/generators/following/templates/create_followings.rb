class CreateFollowings < ActiveRecord::Migration
  def self.up
    create_table :followings do |t|
      t.string :note, :limit => 50, :default => "" 
      t.boolean  :blocked, :default => false
      t.references :following, :polymorphic => true
      t.references :user
      t.timestamps
    end

    add_index :followings, :following_type
    add_index :followings, :following_id
    add_index :followings, :user_id
  end

  def self.down
    drop_table :followings
  end
end