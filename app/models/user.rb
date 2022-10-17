class User < ApplicationRecord
  has_many :expenditures, dependent: :destroy, foreign_key: 'user_id'
  has_many :categories, dependent: :destroy, foreign_key: 'user_id'
 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  validates :name, presence: true, length: { maximum: 100 }
end
