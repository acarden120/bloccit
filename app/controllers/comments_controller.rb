class CommentsController < ApplicationController

  def new
    @topic = Topic.find(params[:topic_id])
    @post = Post.new
    authorize @post
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.find( params[:post_id] )

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

private

  def comment_params
    params.require(:comment).permit(:body)
  end

end