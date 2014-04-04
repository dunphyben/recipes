class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render('index.html.erb')
  end

  def new
    @tags = Tag.all
    @recipe = Recipe.new
    render('recipes/new.html.erb')
  end

  def create
    @tags = Tag.all
    @tag = Tag.find(params[:tag][:id])
    @recipe = Recipe.new(params[:recipe])
    @recipe.tags << @tag
    if @recipe.save
      flash[:notice] = "Recipe cretede!"
      redirect_to("/recipes/#{@recipe.id}")
    else
      render('recipes/new.html.erb')
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    @tag = @recipe.tags
    render('recipes/show.html.erb')
  end

  def edit
    @tags = Tag.all
    # @tag = Tag.find_by(name: params[:name])
    @recipe = Recipe.find(params[:id])
    render('recipes/edit.html.erb')
  end
end
