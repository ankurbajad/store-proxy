class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :store_type
      t.string :app_id
      t.boolean :proxy, :default => false
      t.text :body
      t.timestamps
    end
  end
end
