class ShopsController < ApplicationController
  def new
    @shop = Shop.new
  end
end
