# frozen_string_literal: true

class Product < ApplicationRecord
  paginates_per 5

  belongs_to :category
  validates :name, :description, :price, :image, presence: true

  mount_uploader :image, ImageUploader
end