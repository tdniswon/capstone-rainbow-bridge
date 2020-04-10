class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction
  require 'date'
  # GET /orders
  # GET /orders.json
  def index
    #@pagy,@orders = pagy(Order.where.not(order_status_id: 4 ).order(sort_column + ' ' + sort_direction))
    @q = Order.ransack(params[:q])
    @pagy, @orders = pagy(@q.result)
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
    @customer = params[:customer_id]
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    @nested_customer = params[:nested_customer]

    respond_to do |format|
      if @order.save
        if @nested_customer != ""
          @cust = Customer.where(id: @nested_customer).take
          format.html { redirect_to @cust, notice: 'Tier was successfully created.' }
        else
          format.html { redirect_to @order, notice: 'Order was successfully created.' }
          format.json { render :show, status: :created, location: @order }
        end
        @custID = params[:order][:customer_id]
        @cust = Customer.where(:id => @custID).first
        @cust.customer_status_id = 2
        @cust.save
      else
        @customer = params[:nested_customer]
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def archive
    @order = Order.find params[:id]
    @order.update(order_status_id: 4)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:order_description, :order_cost, :order_start_date, :order_due_date, :order_date_finish, :order_delivery, :delivery_street_address, :delivery_city, :delivery_state, :delivery_zip_code, :customer_id, :order_type_id, :order_status_id, inspiration_images: [] , order_lines_attributes: [:order_line_description, :order_line_start_date, :order_line_finish_date, :special_order_notes, :product_id, :order_line_status_id, :_destroy], rental_lines_attributes: [:rental_item_id, :order_id, :_destroy])
    end

    def sort_column
      Order.column_names.include?(params[:sort]) ? params[:sort] : "order_description"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
    end
end
