class CampainTypesController < ApplicationController
  before_action :set_campain_type, only: [:show, :edit, :update, :destroy]

  # GET /campain_types
  def index
    @campain_types = CampainType.all
  end

  # GET /campain_types/1
  def show
  end

  # GET /campain_types/new
  def new
    @campain_type = CampainType.new
  end

  # GET /campain_types/1/edit
  def edit
  end

  # POST /campain_types
  def create
    @campain_type = CampainType.new(campain_type_params)

    if @campain_type.save
      redirect_to @campain_type, notice: 'Campain type was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /campain_types/1
  def update
    if @campain_type.update(campain_type_params)
      redirect_to @campain_type, notice: 'Campain type was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /campain_types/1
  def destroy
    @campain_type.destroy
    redirect_to campain_types_url, notice: 'Campain type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campain_type
      @campain_type = CampainType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def campain_type_params
      params.require(:campain_type).permit(:name, :campain_id_id)
    end
end
