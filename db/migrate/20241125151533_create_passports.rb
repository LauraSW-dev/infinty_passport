class CreatePassports < ActiveRecord::Migration[7.1]
  def change
    create_table :passports do |t|
      t.string :title
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
