class CategoriesController < ApplicationController
  before_action :authenticate_user!
 def index
  @categories = Category.all
 end

 def new
  @category = Category.new

      respond_to do |format|
      format.html { render :new, locals: { post: @category } }
    end
 end

 def create
  @category = Category.new(category_params)
  @category.user_id = current_user.id
  if @category.save
    redirect_to categories_path(current_user)
  else
    render :new
  end
end

private 
 def category_params
  params.require(:category).permit(:name, :icon)
 end
 

end
