class User < ActiveRecord::Base
  belongs_to :role
  belongs_to :company
  has_secure_password
  
  validates :email, presence: true, uniqueness: true
  
  def admin?
    role.title == 'admin'
  end

  def client?
    role.title == 'client'
  end
end
