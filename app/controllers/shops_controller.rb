class ShopsController < ApplicationController
  def show
    @shop = Shop.find(params[:id])
    @customers = @shop.customers
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    @shop.user = current_user

    if @shop.save
      redirect_to shop_path(@shop)
    else
      render :new
    end
  end

  private

  def shop_params
    params.require(:shop).permit(:name)
  end
end
