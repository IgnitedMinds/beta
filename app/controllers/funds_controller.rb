class FundsController < InheritedResources::Base
  actions :index, :show, :edit, :update, :destroy

  http_basic_authenticate_with :name => "lewis", :password => "password", only: :new

  def index
    @funds = Fund.all
  end

  def show
  end

  def new
    @fund = Fund.new
  end

  def edit
  end

  def create
    @fund = Fund.new(fund_params)

    respond_to do |format|
      if @fund.save
        format.html { redirect_to action: "index" }
        format.json { render :index }
      else
        format.html { render :new }
        format.json { render json: @fund.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @fund.update(fund_params)
        format.html { redirect_to @fund }
        format.json { render :show, status: :ok, location: @fund }
      else
        format.html { render :edit }
        format.json { render json: @fund.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @fund.destroy
    respond_to do |format|
      format.html { redirect_to funds_url }
      format.json { head :no_content }
    end
  end

  private
  def set_fund
    @fund = Fund.find(params[:id])
  end

  def fund_params
    params.require(:fund).permit(
    :title,
    :source,
    :type,
    :age_range,
    :deadline,
    :location,
    :ext_url,)
  end
end
