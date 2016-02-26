class AddCommentsToConversations < ActiveRecord::Migration
  def change
    add_reference :conversations, :comment, index: true, foreign_key: true
  end
end
