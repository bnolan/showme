class User < ActiveRecord::Base
  has_many :messages, :foreign_key => :from_id
end
