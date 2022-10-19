class ExpendituresController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @category = Category.find(params[:category_id])
    @expenditures = @category.expenditures.all
  end

  def new 
    @expenditure = Expenditure.new  
    respond_to do |format|
      format.html { render :new, locals: { post: @expenditure} }
    end
  end

  def create
    @category = Category.find(params[:category_id])
    @expenditure = @category.expenditures.new(expenditure_params)
    @expenditure.user_id = current_user.id
    @expenditure.update_categories_total
     
    if @expenditure.save 
      redirect_to category_expenditures_path(@category)
      else
        render :new
      end   
    
  end

  

  def destroy
    @expenditure = Expenditure.find(params[:id])
    @expenditure.destroy
    @expenditure.update_categories_total_after_destroy
    redirect_to category_expenditures_path(@expenditure.category_id)
  end


  private
  def expenditure_params
   params.require(:expenditure).permit(:name, :amount)
  end

  
  
end
