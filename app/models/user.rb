class User < ApplicationRecord
  # Added by Tyler 2/6, create child foreign key relationship with roles table
  belongs_to :role, optional: true

  # Added by Tyler 2/6, Set the default role to User
  before_create :set_default_role
  def set_default_role
    role = Role.find_by(name: 'User')
    self.role = role if role.present?
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
