class AddUserReferencesToPassport < ActiveRecord::Migration[7.1]
  def change
    add_reference :passports, :user, null: false, foreign_key: true
  end
end
