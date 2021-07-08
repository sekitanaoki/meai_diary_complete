class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :user_id,           null: false, default: ""
      t.string :gennre_id,          null: false, default: ""
      t.string :product_image_id,   null: false, default: ""
      t.string :shop_neme,          null: false, default: ""
      t.text :description,          null: false, default: ""
      t.string :menu_neme,          null: false, default: ""
      t.string :address,            null: false, default: ""
      t.datetime :time,             null: false, default: ""
      t.timestamps
    end
  end
end
