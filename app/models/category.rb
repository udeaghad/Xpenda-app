class Category < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :expenditure_categories, dependent: :destroy, foreign_key: 'category_id'
  has_many :expenditures, through: :expenditure_categories, dependent: :destroy
  
  validates :name, presence: true, length: { maximum: 100}
  validatable :icon, presence: true, length: {maximum: 500}  
end
