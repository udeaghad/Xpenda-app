require 'rails_helper'

RSpec.describe "expenditures", type: :feature do
  before :each do
    sign_in create(:user)
    @category = create(:category) 
    @expenditure = create(:expenditure, category_id: @category.id)
    visit category_expenditures_path(@category.id)
  end

  it 'expenditures index page' do
    expect(page).to have_content('Transanctions')
  end

  it 'expenditures index page' do
    expect(page).to have_content('Total')
  end

  it 'expenditures index page' do
    expect(page).to have_content('Add Expense')
  end

  it 'expenditures index page' do
    expect(page).to have_content('Date')
  end

  it 'expenditures index page' do
    expect(page).to have_content('Amount')
  end

  it 'expenditures index page' do
    expect(page).to have_content('Sign Out')
  end

  it 'expenditures index page' do
    expect(page).to have_content('Delete')
  end

  it 'expenditures index page' do
    expect(page).to have_content('Category')
  end


end