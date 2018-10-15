class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
    # coupons_path
  end

  def new
  end

  def create
    @coupon = Coupon.new
    @coupon[:coupon_code] = params[:coupon][:coupon_code]
    @coupon[:store] = params[:coupon][:store]
    @coupon.save and redirect_to coupon_path(@coupon)
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

end
