class AddAddressToPassport < ActiveRecord::Migration[7.1]
  def change
    add_column :passports, :address, :string
  end
end
