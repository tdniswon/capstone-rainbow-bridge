class TiersController < ApplicationController
  before_action :set_tier, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction

  # GET /tiers
  # GET /tiers.json
  def index
    @pagy,@tiers = pagy(Tier.all.order(sort_column + ' ' + sort_direction))
  end

  # GET /tiers/1
  # GET /tiers/1.json
  def show
  end

  # GET /tiers/new
  def new
    @tier = Tier.new
    @order_line = params[:order_line_id]

    @sameOrderLineTiers = Tier.where(order_line_id: @order_line)
    puts(@sameOrderLineTiers)
    @maxPosition = @sameOrderLineTiers.maximum("position")
    puts(@maxPosition)
    if !@maxPosition
      puts("nil")
      @maxPosition = 0
    end
    @setPosition = @maxPosition + 1
    puts(@setPosition)
  end

  # GET /tiers/1/edit
  def edit
  end

  # POST /tiers
  # POST /tiers.json
  def create
    @tier = Tier.new(tier_params)
    @nested_ol = params[:nested_ol]

    respond_to do |format|
      if @tier.save
        if @nested_ol != ""
          @ol = OrderLine.where(id: @nested_ol).take
          format.html { redirect_to @ol, notice: 'Tier was successfully created.' }
          puts("**********************")
          puts(params)
          puts(@ol)
          puts(@ol.id)
          puts("**********************")
        else
          format.html { redirect_to @tier, notice: 'Tier was successfully created.' }
          format.json { render :show, status: :created, location: @tier }
          puts("@@@@@@@@@@@@@@@@@@@@@@")
          puts(params)
          puts("@@@@@@@@@@@@@@@@@@@@@@")
        end
      else
        @order_line = params[:nested_ol]
        format.html { render :new }
        puts("$$$$$$$$$$$$$$$$$$$$$$$$$$")
        format.json { render json: @tier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tiers/1
  # PATCH/PUT /tiers/1.json
  def update
    respond_to do |format|
      if @tier.update(tier_params)
        format.html { redirect_to @tier, notice: 'Tier was successfully updated.' }
        format.json { render :show, status: :ok, location: @tier }
      else
        format.html { render :edit }
        format.json { render json: @tier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tiers/1
  # DELETE /tiers/1.json
  def destroy
    @tier.destroy
    respond_to do |format|
      format.html { redirect_to tiers_url, notice: 'Tier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def position
    @sameOrderLineTiers = Tier.where(order_line_id: @order_line.id)
    puts(@sameOrderLineTiers)
    @maxPosition = @sameOrderLineTiers.maximum("position")
    puts(@maxPosition)
    if !@maxPosition
      puts("nil")
      @maxPosition = 0
    end
    @setPosition = @maxPosition + 1
    puts(@setPosition)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tier
      @tier = Tier.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tier_params
      params.require(:tier).permit(:order_line_id, :position, :tier_size, :tier_special_notes, :cake_flavor_id, :frosting_flavor_id, :shape_id, tier_fillings_attributes: [:tier_id, :filling_id, :_destroy])
    end
    def sort_column
      Tier.column_names.include?(params[:sort]) ? params[:sort] : "position"
    end
    
    def sort_direction
      %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
    end
end
