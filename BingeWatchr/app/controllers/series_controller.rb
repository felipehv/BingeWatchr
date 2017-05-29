class SeriesController < ApplicationController
  before_action :set_series, only: [:show, :edit, :update, :destroy]

  # GET /series
  # GET /series.json
  def index
    @series = Serie.all
  end

  # GET /series/1
  # GET /series/1.json
  def show
    @serie = Serie.find_by_id(params[:id])
    @capitulos = @serie.capitulos
  end

  # GET /series/new
  def new
    @series = Serie.new
    @uid = current_user.id
    
  end

  def new0
    @uid = current_user.id
    @tipos = Tipo.all
  end

  # GET /series/1/edit
  def edit
  end

  # POST /series
  # POST /series.json
  def create
    @series = Serie.new(series_params)
    if @series.save
      flash[:notice] = "Successfully created Series!"
      redirect_to lista_series_url
    else
      flash[:alert] = "Error creating new Series!"
      render :new
    end  
  end

  # PATCH/PUT /series/1
  # PATCH/PUT /series/1.json
  def update
    respond_to do |format|
      if @series.update(series_params)
        format.html { redirect_to @series, notice: 'Serie was successfully updated.' }
        format.json { render :show, status: :ok, location: @series }
      else
        format.html { render :edit }
        format.json { render json: @series.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /series/1
  # DELETE /series/1.json
  def destroy
    @series.destroy
    respond_to do |format|
      format.html { redirect_to series_url, notice: 'Serie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_series
      @series = Serie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def series_params
      params.require(:serie).permit(:name, :year, :user_id, :tipo_id)
    end
end
