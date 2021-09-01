class AddCoordinatesToRats < ActiveRecord::Migration[6.0]
  def change
    add_column :rats, :latitude, :float
    add_column :rats, :longitude, :float
  end
end
