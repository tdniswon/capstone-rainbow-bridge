class RentalLinesController < ApplicationController
  before_action :set_rental_line, only: [:show, :edit, :update, :destroy]

  # GET /rental_lines
  # GET /rental_lines.json
  def index
    @rental_lines = RentalLine.all
  end

  # GET /rental_lines/1
  # GET /rental_lines/1.json
  def show
  end

  # GET /rental_lines/new
  def new
    @rental_line = RentalLine.new
    @order = params[:order_id]
  end

  # GET /rental_lines/1/edit
  def edit
  end

  # POST /rental_lines
  # POST /rental_lines.json
  def create
    @rental_line = RentalLine.new(rental_line_params)
    @nested_o = params[:nested_o]

    respond_to do |format|
      if @rental_line.save
        if @nested_o != ""
          @o = Order.where(id: @nested_o).take
          format.html { redirect_to @o, notice: 'Tier was successfully created.' }
        else
          format.html { redirect_to @rental_line, notice: 'Rental line was successfully created.' }
          format.json { render :show, status: :created, location: @rental_line }
        end
      else
        format.html { render :new }
        format.json { render json: @rental_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rental_lines/1
  # PATCH/PUT /rental_lines/1.json
  def update
    respond_to do |format|
      if @rental_line.update(rental_line_params)
        format.html { redirect_to @rental_line, notice: 'Rental line was successfully updated.' }
        format.json { render :show, status: :ok, location: @rental_line }
      else
        format.html { render :edit }
        format.json { render json: @rental_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rental_lines/1
  # DELETE /rental_lines/1.json
  def destroy
    @rental_line.destroy
    respond_to do |format|
      format.html { redirect_to rental_lines_url, notice: 'Rental line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rental_line
      @rental_line = RentalLine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rental_line_params
      params.require(:rental_line).permit(:order_id, :rental_item_id)
    end
end
