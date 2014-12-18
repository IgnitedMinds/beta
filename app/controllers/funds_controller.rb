class FundsController < ApplicationController
  before_action :set_fund, only: [:show, :edit, :update, :destroy]

  def index
    @funds = Fund.all
  end

  def show
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
