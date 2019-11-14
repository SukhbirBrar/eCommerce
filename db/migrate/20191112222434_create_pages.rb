class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.string :title
      t.string :permalink
      t.text :contect

      t.timestamps
    end
  end
end
