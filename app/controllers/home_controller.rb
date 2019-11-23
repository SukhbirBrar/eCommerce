# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def filter
    if params[:value] == '1'
      @filter = Product.where(filter: "sale")
    else
      @filter = Product.where(filter: "new")
    end
  end
end
