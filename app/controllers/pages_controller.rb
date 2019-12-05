# frozen_string_literal: true

class PagesController < ApplicationController
  def show; end

  def page_params
    params.require(:page).permit(:title, :content, :permalink)
  end

  def search
    if params[:search].blank?
      redirect_to(root_path, alert: 'Empty field!') && return
    else
      @search_id = params[:category]
      @parameter = params[:search].downcase
      @ctaegory_product = 'lower(name) LIKE :search', search: "%#{@parameter}%"
      @results = Product.includes(:category).where(@ctaegory_product).where(category_id: @search_id)

      # @results = Product.includes(:category).where('lower(name) LIKE :search', search: "%#{@parameter}%").where(category_id: @search_id)
      # @results = Product.where('lower(name) LIKE :search', search: "%#{@parameter}%")
    end
  end
end
