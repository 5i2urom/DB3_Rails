class CreateOpers < ActiveRecord::Migration[7.0]
  def change
    create_table :opers do |t|
      t.string :name
      t.integer :code
      t.float :quantity_mln

      t.timestamps
    end
  end
end
