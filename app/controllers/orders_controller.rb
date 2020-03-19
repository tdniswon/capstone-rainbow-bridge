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
        ### Working API Logic for Test table and Wix test order form ###
        # puts"**********"
        # puts params[:test]
        # puts"**********"
        # # @test = Test.create(params[params[:test]])
        # @test = Test.new
        # @test.first_name = params[:test][:first_name]
        # @test.last_name = params[:test][:last_name]
        # @test.order = params[:test][:order]
        # if @test.save
        #     render 'success'
        # else
        #     render 'failed'
        # end
        ###################################################################

        puts(request.body)

        ### Testing API logic with images ###
        @test_product = TestProduct.new
        @test_product.name = params[:test][:name]
        @test_product.description = params[:test][:description]
        @test_product.notes = params[:test][:notes]
        @test_product.test_order = TestOrder.first
        
        ### Image logic here ###
        # content = JSON.parse(request.body.read.force_encoding("UTF-8"))
        # decoded_data = Base64.decode64(content["file_content"])
        # io = StringIO.new
        # io.puts(decoded_data)
        # io.rewind
        @test_product.images.attach(io: request.body, filename: 'base.png')
        ########################################################################

        @test_product.save
    end

    def test_params
        params.require(:test).permit(:first_name, :last_name, :order)
    end
end
