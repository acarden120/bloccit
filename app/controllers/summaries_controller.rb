class SummariesController < ApplicationController
  def new
    @post = Post.find(params[:id])
    @summary = Summary.new
  end

  def show
    @post = Post.find(params[:id])
    @summary = Summary.find(params)
  end

   def create
     @summary = Topic.new(params.require(:summary).permit(:title, :body))
     @post.summary = @summary

     if @summary.save
       redirect_to @summary, notice: "Summary was saved successfully."
     else
       flash[:error] = "Error creating topic. Please try again."
       render :new
     end
   end
end