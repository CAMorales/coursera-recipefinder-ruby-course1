class RecipesController < ApplicationController
  def index
  	
  	#if there's a param named search, otherwise we'll default to chocolate
  	@search_term=params[:search] ||'chocolate' 
  	@recipes=Recipe.for (@search_term)
  end
end
