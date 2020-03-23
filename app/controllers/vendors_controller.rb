class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
    @vendorsweets = Vendorsweet.all
  end
  def show
    @vendor = Vendor.find_by(id: params[:id])
  end

end
