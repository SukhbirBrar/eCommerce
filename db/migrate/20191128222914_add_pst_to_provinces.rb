class AddPstToProvinces < ActiveRecord::Migration[6.0]
  def change
    add_column :provinces, :PST, :integer
  end
end
