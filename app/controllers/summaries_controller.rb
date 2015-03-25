class SummariesController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @summary = Summary.new
  end

  def show
    @post = Post.find(params[:post_id])
    @summary = @post.summary
  end

   def create
    @post = Post.find(params[:post_id])
    @summary = @post.build_summary(summary_params)
    if @summary.save
      flash[:notice]
      redirect_to post_summary_path(@post.id) 
    else
      flash[:error] = "There was an error saving your summary. Please try again."
      render :new
    end
   end

  private

  def summary_params
    params.require(:summary).permit(:description)
  end

end