class User < ActiveRecord::Base
  belongs_to :role
  belongs_to :company
  has_secure_password
  
  validates :email, presence: true, uniqueness: true
end
