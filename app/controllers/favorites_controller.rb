class FavoritesController < ApplicationController

  def create
    post_image = Product.find(params[:product_id])
    #favorite = Favorite.new
    favorite = current_user.favorites.new(product_id: post_image.id)
    #favorite.user_id = current_user
    #favorite.product_id = post_image.id
    favorite.save
    redirect_to product_path(post_image.id)
  end

  def destroy
    post_image = Product.find(params[:product_id])
    favorite = current_user.favorites.find_by(product_id: post_image.id)
    favorite.destroy
    redirect_to product_path(post_image.id)
  end

end
