class ProductsController < ApplicationController

  def top
  end

  def about
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_image_params)
    @product.user_id = current_user.id
    @product.genre_id = 1
    binding.pry
    if @product.save
    redirect_to  products_path
    else
    redirect_to  new_product_path
    end
  end

  def index
     @product_images = Product.all
  end

  def show
  end

  def destroy
  end

  private

  def product_image_params
    params.require(:product).permit(:product_image, :time, :shop_name, :address, :menu_neme, :description,:user_id,:genre_id)
  end

end
