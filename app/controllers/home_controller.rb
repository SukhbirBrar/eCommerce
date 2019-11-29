# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def filter
    @order_item = current_order.order_items.new
    @products = if params[:value] == '1'
                  Product.where(filter: 'Sale')
                else
                  Product.where(filter: 'New')
              end

    render :index
  end
end
