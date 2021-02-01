class RecipesController < ApplicationController
  before_action :set_recipe, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :contributor_confirmation, except: [:index, :new, :show, :create]

  def index
    @recipes = Recipe.order('created_at DESC')
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipes_params)
    if @recipe.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
    if @recipe.update(recipes_params)
      redirect_to recipe_path(@recipe)
    else
      render :edit
    end
  end

  def destroy
    if current_user == @recipe.user
      @recipe.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipes_params
    params.require(:recipe).permit(
      :title, :material, :making, :point, :category_id, :image
    ).merge(user_id: current_user.id)
  end

  def contributor_confirmation
    redirect_to root_path unless current_user == @recipe.user
  end
end
