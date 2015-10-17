class CreateUserTags < ActiveRecord::Migration
  def change
    create_table :users_tags, id: false do |t|
      t.integer :user_id, null: false
      t.integer :tag_id, null: false
      t.index [:user_id, :tag_id], unique: true
    end
  end
end
