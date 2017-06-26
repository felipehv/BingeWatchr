class FavoritesController < ApplicationController

  def index
    @favorites = current_user.favorites
  end

  def create
    user = User.find(params[:user])
    serie = Serie.find(params[:serie])
    @fav = Favorite.new(user: user, serie: serie)
    if @fav.save
      redirect_to tag_path(params[:serie])
    else
      redirect_to tag_path(params[:serie])

    end
  end

  def destroy
    user = User.find(params[:user])
    serie = Serie.find(params[:serie])
    @fav = Favorite.find_by(user: user, serie: serie)
    @fav.destroy

    redirect_to tag_path(params[:serie])
  end

end
