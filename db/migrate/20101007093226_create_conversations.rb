class CreateConversations < ActiveRecord::Migration
  def self.up
    create_table :conversations do |t|
      t.integer :id
      t.string :title
      t.integer :board_id

      t.timestamps
    end
    add_index :conversations, :board_id
    
  end

  def self.down
    drop_table :conversations
  end
end
