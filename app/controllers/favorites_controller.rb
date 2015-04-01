class FavoritesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    favorite = current_user.favorites.build(post: @post)
    authorize favorite

    if favorite.save
     # Add code to generate a success flash and redirect to @post
     # Remember the path shortcut: [@post.topic, @post]
      flash[:notice] = "Favorite was updated."
      redirect_to [@post.topic, @post]
    else
     # Add code to generate a failure flash and redirect to @post
      flash[:error] = "There was an error saving the Favorite. Please try again."
      redirect_to [@post.topic, @post]
    end
  end

  def destroy
    @post = Post.find(params[:id])
    favorite = current_user.favorites.find(params[:id])
    authorize favorite
    
    if favorite.destroy
      flash[:notice] = "Favorite was deleted successfully."
      redirect_to [@post.topic, @post] 
    else
      flash[:error] = "There was an error deleting the favorite."
      redirect_to [@post.topic, @post]
    end
   end
end