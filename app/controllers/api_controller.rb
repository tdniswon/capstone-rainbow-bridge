class ApiController < ApplicationController
    # respond_to :json
    # skip_before_action :verify_authenticity_token

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
        # @customer = Test.new
        # @test.first_name = params[:test][:first_name]
        # @test.last_name = params[:test][:last_name]
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
