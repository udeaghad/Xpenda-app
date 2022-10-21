require 'rails_helper'

RSpec.describe ExpendituresController, type: :controller do
  before :each do
    sign_in create(:user)
    @category = create(:category)
    @expenditure = create(:expenditure, category_id: @category.id)
  end

  it 'returns http success' do
    expect(response).to have_http_status(:success)
  end

  it 'renders index template ' do
    get :index, params: { category_id: @category.id }
    expect(response).to render_template(:index)
  end

  it 'assigns all expenditures to @expenditures' do
    get :index, params: { category_id: @category.id }
    expect(assigns(:expenditures)).to eq(Expenditure.all)
  end
end
