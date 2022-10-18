class ExpendituresController < ApplicationController
  def index
    @expenditures = Category.find(params[:category_id]).expenditures.all
  end
  
end
