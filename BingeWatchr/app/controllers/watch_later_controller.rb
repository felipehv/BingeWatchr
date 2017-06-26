class WatchLaterController < ApplicationController

  def index
    @wl = current_user.watch_laters
  end

  def create
    user = User.find(params[:user])
    capitulo = Capitulo.find(params[:capitulo])
    @wl = WatchLater.new(user: user, capitulo: capitulo)
    if @wl.save
      redirect_to show_capitulo_path(params[:capitulo])
    else
      redirect_to show_capitulo_path(params[:capitulo])

    end
  end

  def destroy
    user = User.find(params[:user])
    capitulo = Capitulo.find(params[:capitulo])
    @wl = WatchLater.find_by(user: user, capitulo: capitulo)
    @wl.destroy

    redirect_to show_capitulo_path(params[:capitulo])
  end

end
