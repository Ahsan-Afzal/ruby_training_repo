class ProductsController < ApplicationController

  def index
    @products = Product.where(category_id: params[:id])
  end
  def new
    @product = Product.new()
  end

  def create
    
    @product = Product.new(product_params)
    @product.save
    redirect_to '@product'

  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to @product

  end

  def edit
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to admin_index_path
  end

  

  def show
    @product = Product.find(params[:id])
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :category_id, :price, :image)
  end
end
