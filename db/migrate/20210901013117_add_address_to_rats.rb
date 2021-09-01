class AddAddressToRats < ActiveRecord::Migration[6.0]
  def change
    add_column :rats, :address, :string
  end
end
