class SummariesController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @summary = Summary.new
  end

  def show
    @post = Post.find(params[:post_id])
    @summary = Summary.find(params)
  end

   def create
     @topic = Topic.find(params[:topic_id])
     @post = current_user.posts.build(params.require(:post).permit(:title, :body)) 
     @summary = Summary.new(params.require(:summary).permit(:title, :body))
     @post.summary = @summary

     if @summary.save
       redirect_to @summary, notice: "Summary was saved successfully."
     else
       flash[:error] = "Error creating topic. Please try again."
       render :new
     end
   end
end