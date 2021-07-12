class CommentsController < ApplicationController

  def create
    post_image = Product.find(params[:product_id])
    comment = current_user.comments.new(comment_params)
    comment.product_id = post_image.id
    comment.save
    redirect_to products_path(post_image.id)
  end

  def destroy
    Comment.find_by(id: params[:id], product_image_id: params[:product_image_id]).destroy
    redirect_to product_path(params[:product_image_id])
  end


   private

  def comment_params
    params.require(:comment).permit(:comment)
  end
end
