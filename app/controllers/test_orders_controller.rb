class TestOrdersController < ApplicationController
  before_action :set_test_order, only: [:show, :edit, :update, :destroy]

  # GET /test_orders
  # GET /test_orders.json
  def index
    @test_orders = TestOrder.all
  end

  # GET /test_orders/1
  # GET /test_orders/1.json
  def show
  end

  # GET /test_orders/new
  def new
    @test_order = TestOrder.new
  end

  # GET /test_orders/1/edit
  def edit
  end

  # POST /test_orders
  # POST /test_orders.json
  def create
    @test_order = TestOrder.new(test_order_params)

    respond_to do |format|
      if @test_order.save
        format.html { redirect_to @test_order, notice: 'Test order was successfully created.' }
        format.json { render :show, status: :created, location: @test_order }
      else
        format.html { render :new }
        format.json { render json: @test_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_orders/1
  # PATCH/PUT /test_orders/1.json
  def update
    respond_to do |format|
      if @test_order.update(test_order_params)
        format.html { redirect_to @test_order, notice: 'Test order was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_order }
      else
        format.html { render :edit }
        format.json { render json: @test_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_orders/1
  # DELETE /test_orders/1.json
  def destroy
    @test_order.destroy
    respond_to do |format|
      format.html { redirect_to test_orders_url, notice: 'Test order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_order
      @test_order = TestOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_order_params
      params.require(:test_order).permit(:name, :notes)
    end
end
