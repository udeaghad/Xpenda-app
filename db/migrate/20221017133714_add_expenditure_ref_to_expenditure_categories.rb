class AddExpenditureRefToExpenditureCategories < ActiveRecord::Migration[7.0]
  def change
    add_reference :expenditure_categories, :expenditure, null: false, foreign_key: true
  end
end
