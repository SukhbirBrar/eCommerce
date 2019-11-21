# frozen_string_literal: true

class AddTypeToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :filter, :string
  end
end
