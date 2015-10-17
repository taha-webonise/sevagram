class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.boolean :read
      t.integer :sender
      t.timestamps null: false
    end
  end
end
