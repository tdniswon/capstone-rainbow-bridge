class OrdersController < ApplicationController
    # Added by Tyler 2/6, initialize test for form
    def show
        @test = Test.find(params[:id])
    end

    def index
        @test = Test.new
    end

    def create
        @test = Test.create(params[:test_params])
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
