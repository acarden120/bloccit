class CommentsController < ApplicationController
  def create
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.find( params[:post_id] )

    @comment = current_user.posts.build(comment_params)
#    @comment = Comment.new(params.require(:comment).permit(:title, :body))
#    @post.comment = @comment

    if @comment.save
      redirect_to @comment, notice: "Summary was saved successfully."
    else
      flash[:error] = "Error creating topic. Please try again."
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(
      :body,
      :post_id
    )
  end‏


end