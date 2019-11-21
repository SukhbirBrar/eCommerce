# frozen_string_literal: true

class PagesController < ApplicationController
  def show; end

  def page_params
    params.require(:page).permit(:title, :content, :permalink)
  end

  def search
    if params[:search].blank?
      redirect_to(root_path, alert: 'Empty field!') && return
    elsif
      @parameter = params[:search].downcase
      @results = Product.where('lower(name) LIKE :search', search: "%#{@parameter}%")
    else
      @category = Category.search(params[:id])
    end
  end
end
