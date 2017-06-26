class SeenCapitulosController < ApplicationController


  def create
    user = User.find(params[:user])
    capitulo = Capitulo.find(params[:capitulo])
    @rating = SeenCapitulo.new(user: user, capitulo: capitulo)
    if @rating.save
      redirect_to show_capitulo_path(params[:capitulo])
    else
      redirect_to show_capitulo_path(params[:capitulo])

    end
  end

  def destroy
    user = User.find(params[:user])
    capitulo = Capitulo.find(params[:capitulo])
    @seen = SeenCapitulo.find_by(user: user, capitulo: capitulo)
    @seen.destroy

    redirect_to show_capitulo_path(params[:capitulo])
  end
  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def rating_params
    params.permit(:user, :capitulo)
  end

end
