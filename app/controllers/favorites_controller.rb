class FavoritesController < ApplicationController
  def create
    @post_image = Product.find(params[:product_id])
    favorite = current_user.favorites.new(product_id: @post_image.id)
    favorite.save
    # redirect_to product_path(post_image.id) 非同期へ切り替えの為
  end

  def destroy
    @post_image = Product.find(params[:product_id])
    favorite = current_user.favorites.find_by(product_id: @post_image.id)
    favorite.destroy
    # redirect_to product_path(post_image.id)非同期へ切り替えの為
  end
end
