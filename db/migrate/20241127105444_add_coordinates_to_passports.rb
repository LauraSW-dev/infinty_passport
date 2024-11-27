class AddCoordinatesToPassports < ActiveRecord::Migration[7.1]
  def change
    add_column :passports, :latitude, :float
    add_column :passports, :longitude, :float
  end
end
