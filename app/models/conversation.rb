class Conversation < ActiveRecord::Base
  has_many :comments
  belongs_to :board
  
  
end
