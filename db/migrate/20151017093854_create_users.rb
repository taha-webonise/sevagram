class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :mobile_number, null: false
      t.index :mobile_number, unique: true
      t.string :address
      t.string :password
      t.string :type
      t.timestamps null: false
    end
  end
end
