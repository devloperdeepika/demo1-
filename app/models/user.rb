class User < ApplicationRecord
  has_many :friendships, dependent: :destroy
  has_many :friends, :through => :friendships
 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true


end
