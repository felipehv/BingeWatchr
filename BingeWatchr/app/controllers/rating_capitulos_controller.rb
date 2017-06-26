class RatingCapitulosController < ApplicationController


  def create
    user = User.find(params[:user])
    capitulo = Capitulo.find(params[:capitulo])
    @rating = RatingCapitulo.new(user: user, capitulo: capitulo, value: params[:value])
    if @rating.save
      redirect_to show_capitulo_path(params[:capitulo])
    else
      redirect_to show_capitulo_path(params[:capitulo])

    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def rating_params
    params.permit(:user, :capitulo, :value)
  end

end
