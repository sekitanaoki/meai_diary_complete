class ProductsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def top
  end

  def about
  end

  def ranking
    @rank = Product.find(Favorite.group(:product_id).order('count(product_id) desc').limit(3).pluck(:product_id))
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_image_params)
    @product.user_id = current_user.id
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def index
    @product_images = Product.all
    @product_images = Product.page(params[:page]).per(6).reverse_order
    # per(6).reverse_orderページ表示数/降順
  end

  def show
    @product = Product.find(params[:id])
    @post_comment = Comment.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path(@product)
  end

  def search
    @product_images = Product.where(genre_id: params[:genre_id])
    @product_images = @product_images.page(params[:page]).reverse_order
    render "index"
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_image_params)
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  private

  def product_image_params
    params.require(:product).permit(:product_image, :time, :shop_name, :address, :menu_name, :description, :user_id, :genre_id)
  end
end
