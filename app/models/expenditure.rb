class Expenditure < ApplicationRecord
  belongs_to :user, class_name: 'User'
  belongs_to :category, class_name: "Category"
  # has_many :expenditure_categories, dependent: :destroy, foreign_key: 'expenditure_id'
  # has_many :categories, through: :expenditure_categories, dependent: :destroy
  # has_one :category, through: :expenditure_categories, dependent: :destroy

  validates :name, presence: true, length: { maximum: 100 }
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }

  def update_categories_total
     category.update(total: amount + category.total) if amount.present?
  end

  def update_categories_total_after_destroy
    category.update(total: category.total - amount) if amount.present?
  end
end
