class CommentsController < ApplicationController
  def create
    post_image = Product.find(params[:product_id])
    comment = current_user.comments.new(comment_params)
    comment.product_id = post_image.id
    if comment.save
      redirect_to products_path(post_image.id)
    else
      @error_comment = comment
      @product = Product.find(params[:product_id])
      @post_comment = Comment.new
      render "products/show"
    end
  end

  def destroy
    @comment = Comment.find_by(id: params[:id], product_id: params[:product_id]).destroy
    redirect_to products_path(@comment)
  end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end
end
