class OrderLineRestrictionsController < ApplicationController
  before_action :set_order_line_restriction, only: [:show, :edit, :update, :destroy]

  # GET /order_line_restrictions
  # GET /order_line_restrictions.json
  def index
    @order_line_restrictions = OrderLineRestriction.all
  end

  # GET /order_line_restrictions/1
  # GET /order_line_restrictions/1.json
  def show
  end

  # GET /order_line_restrictions/new
  def new
    @order_line_restriction = OrderLineRestriction.new
    @order_line = params[:order_line_id]
  end

  # GET /order_line_restrictions/1/edit
  def edit
  end

  # POST /order_line_restrictions
  # POST /order_line_restrictions.json
  def create
    @order_line_restriction = OrderLineRestriction.new(order_line_restriction_params)
    @nested_ol = params[:nested_ol]

    respond_to do |format|
      if @order_line_restriction.save
        if @nested_ol != ""
          @ol = OrderLine.where(id: @nested_ol).take
          format.html { redirect_to @ol, notice: 'Tier was successfully created.' }
        else
          format.html { redirect_to @order_line_restriction, notice: 'Order line restriction was successfully created.' }
          format.json { render :show, status: :created, location: @order_line_restriction }
        end
      else
        @order_line = params[:nested_ol]
        format.html { render :new }
        format.json { render json: @order_line_restriction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_line_restrictions/1
  # PATCH/PUT /order_line_restrictions/1.json
  def update
    respond_to do |format|
      if @order_line_restriction.update(order_line_restriction_params)
        format.html { redirect_to @order_line_restriction, notice: 'Order line restriction was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_line_restriction }
      else
        format.html { render :edit }
        format.json { render json: @order_line_restriction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_line_restrictions/1
  # DELETE /order_line_restrictions/1.json
  def destroy
    @order_line_restriction.destroy
    respond_to do |format|
      format.html { redirect_to order_line_restrictions_url, notice: 'Order line restriction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_line_restriction
      @order_line_restriction = OrderLineRestriction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_line_restriction_params
      params.require(:order_line_restriction).permit(:order_line_id, :dietary_restriction_id)
    end
end
