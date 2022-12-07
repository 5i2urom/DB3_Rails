class CreateAbonents < ActiveRecord::Migration[7.0]
  def change
    create_table :abonents do |t|
      t.string :name
      t.bigint :passport
      t.string :address, array: true

      t.timestamps
    end
  end
end
