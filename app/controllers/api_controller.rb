class ApiController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
    end

    def new
    end

    def show
    end

    def create
        puts"**********"
        puts params[:api]
        puts"**********"
     
        puts("Test Test Test")
        # @customer = Customer.new
        # @customer.customer_first_name = params[:api][:first_name]
        # @customer.customer_last_name = params[:api][:last_name]
        # @test.order = params[:test][:order]
        # if @test.save
        #     render 'success'
        # else
        #     render 'failed'
        # end
        
        if Customer.exists?(customer_email: params[:api][:email])
            @oldCustomer = Customer.where(customer_email: params[:api][:email]).last
            puts"customer exists"
            puts @oldCustomer.customer_email
            puts"their id is"
            puts @oldCustomer.id
            @order = Order.new
            @order.customer_id = @oldCustomer.id
            @order.order_delivery = true # params[:api][:order_delivery] #probably won't need this due to nature of boolean
            @order.order_start_date = DateTime.now # params[:api][:order_start_date]
            @order.order_due_date = params[:api][:order_due_date]
            @order.order_description = params[:api][:order_description]
            @order.order_type_id = 1 # params[:api][:order_type]
            @order.order_status_id = 1 # params[:api][:order_status]
            @order.inspiration_images.attach(io: request.body, filename: 'base.png')
            @order.save
            #@customer = Customer.new
        else
            puts"customer does not exist"
            @customer = Customer.new
            @customer.customer_first_name = params[:api][:first_name]
            @customer.customer_last_name = params[:api][:last_name]
            @customer.customer_email = params[:api][:email]
            @customer.customer_phone = params[:api][:phone]
            @customer.customer_street_address = params[:api][:street_address]
            @customer.customer_city = params[:api][:city]
            @customer.customer_state = params[:api][:state]
            #@customerid = CustomerStatus.where(customer_status_name: "Active").first
            @customer.customer_status_id = 1 # params[:api][:customer_status] #change this later
            @customer.save
            @newCustomer = Customer.where(customer_email: params[:api][:email]).last
            puts"the customer email is"
            puts @newCustomer.customer_email
            puts"the customer id is"
            puts @newCustomer.id
            #############################
            @order = Order.new
            @order.customer_id = @newCustomer.id
            @order.order_delivery = true # params[:api][:order_delivery] #probably won't need this due to nature of boolean
            @order.order_start_date = DateTime.now # params[:api][:order_start_date]
            @order.order_due_date = params[:api][:order_due_date]
            @order.order_description = params[:api][:order_description]
            @order.order_type_id = 1 # params[:api][:order_type]
            @order.order_status_id = 1 # params[:api][:order_status]
            @order.inspiration_images.attach(io: request.body, filename: 'base.png')
            @order.save
            @newCustomer = Order.where(order_description: params[:api][:order_description]).last
            puts"the order description is"
            puts @newCustomer.order_description
            puts"the order id is"
            puts @newCustomer.id
        end
    end

    private
    def api_params
        params.require(:api).permit(:first_name, :last_name, :order)
    end
end

#if !@maxPosition
 #   puts("nil")
  #  @maxPosition = 0
  #end
