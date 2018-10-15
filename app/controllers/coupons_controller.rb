class CouponsController < ApplicationController

  def index
    # byebug
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
    @coupon = Coupon.new
  end

  def create
    @coupon = Coupon.new(params_coupon)
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

  private
  def params_coupon
    params.require(:coupon).permit(:store, :coupon_code)
  end


end
