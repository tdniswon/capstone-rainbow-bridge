class OrderLinesController < ApplicationController
  before_action :set_order_line, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction

  # GET /order_lines
  # GET /order_lines.json
  def index
    @pagy,@order_lines = pagy(OrderLine.where.not(order_line_status_id: 4).order(sort_column + ' ' + sort_direction))
  end

  # GET /order_lines/1
  # GET /order_lines/1.json
  def show
  end

  # GET /order_lines/new
  def new
    @order_line = OrderLine.new
    @order = params[:order_id]
  end

  # GET /order_lines/1/edit
  def edit
    @order = @order_line.order
  end

  # POST /order_lines
  # POST /order_lines.json
  def create
    @order_line = OrderLine.new(order_line_params)
    @nested_o = params[:nested_o]

    respond_to do |format|
      if @order_line.save
        if @nested_o != ""
          @o = Order.where(id: @nested_o).take
          format.html { redirect_to @o, notice: 'Tier was successfully created.' }
        else
          format.html { redirect_to @order_line, notice: 'Order line was successfully created.' }
          format.json { render :show, status: :created, location: @order_line }
        end
      else
        format.html { render :new }
        format.json { render json: @order_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_lines/1
  # PATCH/PUT /order_lines/1.json
  def update
    respond_to do |format|
      if @order_line.update(order_line_params)
        format.html { redirect_to @order_line, notice: 'Order line was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_line }
      else
        format.html { render :edit }
        format.json { render json: @order_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_lines/1
  # DELETE /order_lines/1.json
  def archive
    @order_line = OrderLine.find params[:id]
    @order_line.update(order_line_status_id: 4)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_line
      @order_line = OrderLine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_line_params
      params.require(:order_line).permit(:order_id, :order_line_description, :order_line_start_date, :order_line_finish_date, :special_order_notes, :product_id, :order_line_status_id, images: [] , order_line_restrictions_attributes: [:order_line_id, :dietary_restriction_id, :_destroy], tasks_attributes: [:task_name, :task_description, :task_start_date, :task_due_date, :task_finish_date, :task_status_id, :_destroy], tiers_attributes: [:position, :tier_size, :tier_special_notes, :cake_flavor_id, :frosting_flavor_id, :shape_id, :_destroy])
    end

    def sort_column
      OrderLine.column_names.include?(params[:sort]) ? params[:sort] : "order_line_description"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
    end
end
