class AddUserRefToExpenditures < ActiveRecord::Migration[7.0]
  def change
    add_reference :expenditures, :user, null: false, foreign_key: true
  end
end
