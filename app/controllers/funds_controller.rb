class FundsController < ApplicationController
  before_action :set_fund, only: [:show, :edit, :update, :destroy]

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
        format.html { redirect_to @fund, notice: 'Fund was successfully created.' }
        format.json { render :show, status: :created, location: @fund }
      else
        format.html { render :new }
        format.json { render json: @fund.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
   respond_to do |format|
      if @fund.update(fund_params)
        format.html { redirect_to @fund, notice: 'Fund was successfully updated.' }
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
      format.html { redirect_to funds_url, notice: 'Fund was successfully destroyed.' }
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
