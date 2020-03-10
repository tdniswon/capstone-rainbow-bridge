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
        # @customer = Customer.new
        # @customer.customer_first_name = params[:api][:first_name]
        # @customer.customer_last_name = params[:api][:last_name]
        # @test.order = params[:test][:order]
        # if @test.save
        #     render 'success'
        # else
        #     render 'failed'
        # end
    end

    private
    def api_params
        params.require(:api).permit(:first_name, :last_name, :order)
    end
end
