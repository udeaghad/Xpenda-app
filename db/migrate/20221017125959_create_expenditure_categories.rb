class CreateExpenditureCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :expenditure_categories do |t|

      t.timestamps
    end
  end
end
