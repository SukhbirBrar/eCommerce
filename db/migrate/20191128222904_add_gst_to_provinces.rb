class AddGstToProvinces < ActiveRecord::Migration[6.0]
  def change
    add_column :provinces, :GST, :integer
  end
end
