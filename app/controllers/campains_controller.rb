class CampainsController < ApplicationController
  before_action :set_campain, only: [:show, :edit, :update, :destroy]

  # GET /campains
  def index
    @campains = Campain.all
  end

  # GET /campains/1
  def show
  end

  # GET /campains/new
  def new
    @campain = Campain.new
    @campains = Campain.all
  end

  # GET /campains/1/edit
  def edit
  end

  # POST /campains
  def create
    @campain = Campain.new(campain_params)
    if @campain.save
      redirect_to new_campain_path, notice: 'Campain was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /campains/1
  def update
    if @campain.update(campain_params)
      redirect_to @campain, notice: 'Campain was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /campains/1
  def destroy
    @campain.destroy
    redirect_to campains_url, notice: 'Campain was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campain
      @campain = Campain.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def campain_params
      params.require(:campain).permit(:name, :start_data, :end_data, :expected_income, :end_income, :cost, :status, :campain_type, :campain_description)
    end
end
