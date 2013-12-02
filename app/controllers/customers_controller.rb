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

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      render json: @customer
    else
      render json: @customer, status: 422
    end
  end

  private

    def customer_params
      params[:customer].permit(:id, :name, :phone, :email, :date_on_waiting_list, :status, :local, :location, :credit, :want, :notes)
    end
end
