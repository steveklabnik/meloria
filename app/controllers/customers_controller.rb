class CustomersController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json { render json: Customer.all }
    end
  end

  def show
    respond_to do |format|
      format.html
      format.json { render json: Customer.find(params[:id]) }
    end
  end
end
