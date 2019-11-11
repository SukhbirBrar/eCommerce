class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.float :subtotal
      t.float :total
      t.float :tax

      t.timestamps
    end
  end
end
