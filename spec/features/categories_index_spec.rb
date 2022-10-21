require 'rails_helper'

RSpec.describe "categories", type: :feature do
  before :each do
    sign_in create(:user)
    @category = create(:category) 
    visit categories_path
  end

  it 'categories index page' do    
    expect(page).to have_content('Categories')
  end

  it 'categories index page' do    
    expect(page).to have_content('Details')
  end

  it 'categories index page' do    
    expect(page).to have_content('Add Category')
  end

  it 'categories index page' do
    expect(page).to have_content('Edit')
  end

  it 'categories index page' do
    expect(page).to have_content('Remove')
  end

  it 'categories index page' do
    expect(page).to have_content('Food')
  end

  it 'categories index page' do
    expect(page).to have_content('Joy')
  end

  it 'categories index page' do
    expect(page).to have_content('Total')
  end

  it 'categories index page' do
    expect(page).to have_content('Add Expense')
  end

 
end