class FavoritesController < ApplicationController
  
  def create
    @favorite = Favorite.new(user_id: current_user.id, book_id: params[:book_id])
    @favorite.save
    redirect_to("/books")
  end
  
  def destroy
  end
  
end