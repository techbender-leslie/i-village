class Conversation < ActiveRecord::Base
  belongs_to :category
  #belongs_to :user
  has_many :comments

  mount_uploader :picture, PictureUploader
  
  validates_presence_of :title
  validates_presence_of :content
end

# In your bank account you can then use @account.people which will give you either a Member or Team object, depending of what it is.
#And in your Member or Team model, you can get the appropriate bank account with @member.bank_accounts.
