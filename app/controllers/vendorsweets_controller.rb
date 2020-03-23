class VendorsweetsController < ApplicationController

  def index
    @vendorsweets = Vendorsweet.all
  end

  def new
    @vendorsweet = Vendorsweet.new
    @vendors = Vendor.all
    @sweets = Sweet.all
  end

  def create
    @newvs = Vendorsweet.new(vendor_params)
    if @newvs.valid?
      @newvs.save
      redirect_to vendorsweets_path
    else
      @vendorsweet = Vendorsweet.new
      render :new
    end
  end

  private
  def vendor_params
    params.require(:vendorsweet).permit(:price,:vendor_id,:sweet_id)
  end

end
