class DealsController < ApplicationController
  before_action :set_deal, only: [:show, :edit, :update, :destroy]


  def index
    @deals = Deal.all
  end

  def show
  end

  def new
    @deal = Deal.new
    @deals = Deal.order('created_at DESC').limit(10)
  end

  def edit
  end

  def create
    @deal = Deal.new(deal_params)

    if @deal.save
      redirect_to new_deal_path, notice: 'Deal was successfully created.'
    else
      render :new
    end
  end

  def update
    if @deal.update(deal_params)
      redirect_to @deal, notice: 'Deal was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @deal.destroy
    redirect_to deals_url, notice: 'Deal was successfully destroyed.'
  end

  private
    def set_deal
      @deal = Deal.find(params[:id])
    end

    def deal_params
      params.require(:deal).permit(:name, :description, :value, :manner,:date)
    end
end
