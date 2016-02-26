class AddCategoryToConversation < ActiveRecord::Migration
  def change
    add_reference :conversations, :category, index: true
  end
end
