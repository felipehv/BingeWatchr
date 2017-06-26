class FavoriteCapitulosController < ApplicationController

  def create
    user = User.find(params[:user])
    capitulo = Capitulo.find(params[:capitulo])
    @fav = FavoriteCapitulo.new(user: user, capitulo: capitulo)
    if @fav.save
      redirect_to show_capitulo_path(params[:capitulo])
    else
      redirect_to show_capitulo_path(params[:capitulo])

    end
  end

  def destroy
    user = User.find(params[:user])
    capitulo = Serie.find(params[:capitulo])
    @fav = FavoriteCapitulo.find_by(user: user, capitulo: capitulo)
    @fav.destroy

    redirect_to show_capitulo_path(params[:capitulo])
  end

end
