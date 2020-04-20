class DashboardController < ApplicationController
  before_action :set_sidebar, except: [:show]

  def index
  end

  def profile
    @account = Account.find_by_uuid(params[:uuid])
    @properties = @account.properties
    @properties_sold = @account.properties.sold.count
    @properties_for_sale = @account.properties.for_sale.count
    @properties_leased = @account.properties.leased.count
    @properties_for_rent = @account.properties.for_rent.count

  end

  private

  def set_sidebar
    @show_sidebar = true if account_signed_in?
  end
end
