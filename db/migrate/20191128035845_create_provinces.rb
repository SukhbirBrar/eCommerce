class CreateProvinces < ActiveRecord::Migration[6.0]
  def change
    create_table :provinces do |t|
      t.string :province_name
      t.integer :code

      t.timestamps
    end
  end
end
