class ProductsController < ApplicationController

  def top
  end

  def about
  end

  def ranking
    
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_image_params)
    @product.user_id = current_user.id
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
    @product = Product.find(params[:id])
    @post_comment = Comment.new
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path(@product)
  end

  def  search
    @product_images=Product.where(genre_id: params[:genre_id])
    render "index"
  end



  private

  def product_image_params
    params.require(:product).permit(:product_image, :time, :shop_name, :address, :menu_name, :description,:user_id,:genre_id)
  end

end
