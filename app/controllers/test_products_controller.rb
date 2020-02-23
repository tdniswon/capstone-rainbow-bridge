class TestProductsController < ApplicationController
  before_action :set_test_product, only: [:show, :edit, :update, :destroy]

  # GET /test_products
  # GET /test_products.json
  def index
    @test_products = TestProduct.all
  end

  # GET /test_products/1
  # GET /test_products/1.json
  def show
  end

  # GET /test_products/new
  def new
    @test_product = TestProduct.new
  end

  # GET /test_products/1/edit
  def edit
  end

  # POST /test_products
  # POST /test_products.json
  def create
    @test_product = TestProduct.new(test_product_params)

    respond_to do |format|
      if @test_product.save
        format.html { redirect_to @test_product, notice: 'Test product was successfully created.' }
        format.json { render :show, status: :created, location: @test_product }
      else
        format.html { render :new }
        format.json { render json: @test_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_products/1
  # PATCH/PUT /test_products/1.json
  def update
    respond_to do |format|
      if @test_product.update(test_product_params)
        format.html { redirect_to @test_product, notice: 'Test product was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_product }
      else
        format.html { render :edit }
        format.json { render json: @test_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_products/1
  # DELETE /test_products/1.json
  def destroy
    @test_product.destroy
    respond_to do |format|
      format.html { redirect_to test_products_url, notice: 'Test product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_product
      @test_product = TestProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_product_params
      params.require(:test_product).permit(:name, :description, :notes, :test_order_id)
    end
end
