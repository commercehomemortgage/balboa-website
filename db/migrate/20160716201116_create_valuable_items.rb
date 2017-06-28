class CreateValuableItems < ActiveRecord::Migration
  def change
    create_table :valuable_items do |t|
      t.integer :quote_id, index: true, null: false
      t.string :name
      t.string :estimated_value
      t.string :zip_code

      t.timestamps
    end

    remove_column :quotes, :jewelry_estimated_value
    remove_column :quotes, :jewelry_zip_code
  end
end
