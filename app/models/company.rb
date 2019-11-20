# frozen_string_literal: true

class Company < ApplicationRecord
  validates :title, :description, presence: true
end
