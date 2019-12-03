# frozen_string_literal: true

class Order < ApplicationRecord
  has_many :order_items

  def subtotal
    multiply = (order_item.unit_price * order_item.quantity)
    order_items.collect { |order_item| order_item.valid? ? multiply : 0 }.sum
  end

  private

  def set_subtotal
    self[:subtotal] = subtotal
  end
end
