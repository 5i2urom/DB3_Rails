class CreatePhones < ActiveRecord::Migration[7.0]
  def change
    create_table :phones do |t|
      t.bigint :number
      t.string :spec, json: true

      t.timestamps
    end
  end
end
