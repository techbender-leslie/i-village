class Comment < ActiveRecord::Base
  belongs_to :conversation

  validates_presence_of :user_name
  validates_presence_of :body
end
