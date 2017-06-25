class SeriesController < ApplicationController


  def create
    @rating = RatingSerie.new(rating_params)
    if @rating.save
      redirect_to tag_path(params[:user])
    else
      redirect_to tag_path(params[:user])
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def rating_params
    params.require(:rating_params).permit(:user, :serie, :value)
  end

end
