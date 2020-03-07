class User < ApplicationRecord
  validates :email, {presence: true, uniqueness: true}
  validates :password, {presence: true}

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
