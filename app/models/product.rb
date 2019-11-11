# frozen_string_literal: true

class Product < ApplicationRecord
  validates :name, :description, :price, :image, presence: true
end
