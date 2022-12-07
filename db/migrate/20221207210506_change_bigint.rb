class ChangeBigint < ActiveRecord::Migration[7.0]
  def change
    change_column :abonents, :passport, :integer, limit: 8
    change_column :phones, :number, :integer, limit: 8
  end
end
