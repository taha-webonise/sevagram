class AddLattitudeAndLongitudeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :lattitude, :float
    add_column :users, :longitude, :float
  end
end
