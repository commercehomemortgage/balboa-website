class AddAdditionalInsureds < ActiveRecord::Migration
  def change
    create_table :additional_insureds do |t|
      t.integer :quote_id, index: true, null: false
      t.string :name
      t.string :birthday

      t.timestamps
    end

    add_column :quotes, :property_college_graduated, :string
    add_column :quotes, :property_degree, :string
    add_column :quotes, :property_occupation, :string
  end
end
