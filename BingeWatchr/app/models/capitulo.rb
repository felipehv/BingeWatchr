class Capitulo < ApplicationRecord
  def get
    @capitulo = Capitulo.find(params[:id])
  end

  def new # Create
    Capitulo.create(:title=params[:title], )
  end
end
