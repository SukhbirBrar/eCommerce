# frozen_string_literal: true
class ProductsController < ApplicationController
  def index
    @category = Category.find(params[:id])
    @products = @category.products.order(:price).page(params[:page])
  end

  def show
    @product = Product.find(params[:id])
  end
end