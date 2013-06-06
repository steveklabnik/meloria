class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  def index
    @customers = Customer.all
  end

  def show
  end

  def new
    @customer = Customer.new
  end

  def edit
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.shop = current_user.shop

    if @customer.save
      redirect_to @customer, notice: 'Customer was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @customer.update(customer_params)
      redirect_to @customer, notice: 'Customer was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @customer.destroy
    redirect_to customers_url, notice: 'Customer was successfully destroyed.'
  end

  private
    def set_customer
      @customer = Customer.find(params[:id])
    end

    def customer_params
      params.require(:customer).permit(:name, :phone, :email, :date_on_waiting_list, :status, :local, :location, :credit, :want, :notes, :shop_id)
    end
end
