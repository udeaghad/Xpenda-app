require 'rails_helper'

RSpec.describe Expenditure, type: :model do
  
  before :each do
    @expenditure = Expenditure.new(amount: 100, name: 'test', category_id: 1, user_id: 1)
  end
  
  it 'amount must not be blank.' do
    @expenditure.amount = nil
    expect(@expenditure).to_not be_valid
  end
  
  it 'name must not be blank.' do
    @expenditure.name = nil
    expect(@expenditure).to_not be_valid
  end
  
  it 'category_id must not be blank.' do
    @expenditure.category_id = nil
    expect(@expenditure).to_not be_valid
  end
  
  it 'user_id must not be blank.' do
    @expenditure.user_id = nil
    expect(@expenditure).to_not be_valid
  end
  

end
