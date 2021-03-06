class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id,        null: false, default: ""
      t.integer :product_id,     ull: false, default: ""
      t.text :comment,           null: false, default: ""
      t.timestamps
    end
  end
end
