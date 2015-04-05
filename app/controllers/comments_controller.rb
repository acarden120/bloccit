class CommentsController < ApplicationController

  def new
    @topic = Topic.find(params[:topic_id])
    @post = Post.new
    authorize @post
  end

  def create
#    @topic = Topic.find(params[:topic_id])
     @post = Post.find(params[:post_id])
     @topic = @post.topic

    @comments = @post.comments
    @comment = current_user.comments.build(comment_params)
    @comment.post = @post

    if @comment.save
      flash[:notice] = "Comment was saved successfully."
      redirect_to [@topic, @post]
    else
      flash[:error] = "Error creating comment. Please try again."
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @topic = @post.topic
    @comment = @post.comments.find(params[:id])
 
    authorize @comment
    if @comment.destroy
      flash[:notice] = "Comment was removed."
    else
      flash[:error] = "Comment couldn't be deleted. Try again."
    end
  end

  respond_to do |format|
    format.html
    format.js
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

end