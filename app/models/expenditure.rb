class Expenditure < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :expenditure_categories, dependent: :destroy, foreign_key: 'expenditure_id'
  has_many :categories, through: :expenditure_categories, dependent: :destroy

  validates :name, presence: true, length: { maximum: 100 }
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
