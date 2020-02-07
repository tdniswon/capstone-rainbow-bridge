class OrdersController < ApplicationController
    # Added by Tyler 2/7, respond to JSON to allow API capability
    respond_to :json
    skip_before_action :verify_authenticity_token

    # Added by Tyler 2/6, initialize test for form
    def show
        @test = Test.find(params[:id])
    end

    def index
        @test = Test.new
    end

    def create
        puts"**********"
        puts params[:test][:first_name]
        puts"**********"
        # @test = Test.create(params[params[:test]])
        @test = Test.new
        @test.first_name = params[:test][:first_name]
        @test.last_name = params[:test][:last_name]
        @test.order = params[:test][:order]
        if @test.save
            render 'success'
        else
            render 'failed'
        end
    end

    def test_params
        params.require(:test).permit(:first_name, :last_name, :order)
    end
end
