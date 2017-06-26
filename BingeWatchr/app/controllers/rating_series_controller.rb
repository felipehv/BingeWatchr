class RatingSeriesController < ApplicationController


  def create
    user = User.find(params[:user])
    serie = Serie.find(params[:serie])
    @rating = RatingSerie.new(user_id: params[:user], serie_id: params[:serie], value: params[:value])
    if @rating.save
      redirect_to tag_path(params[:serie])
    else
      redirect_to tag_path(params[:serie])
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def rating_params
    params.permit(:user, :serie, :value)
  end

end
