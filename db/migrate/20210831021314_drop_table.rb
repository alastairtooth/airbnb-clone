class DropTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :rats, :email
  end
end
