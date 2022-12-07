class CreateCommunications < ActiveRecord::Migration[7.0]
  def change
    create_table :communications do |t|
      t.integer :number
      t.string :tariff_plan
      t.integer :debt
      t.date :date

      t.timestamps
    end
  end
end
