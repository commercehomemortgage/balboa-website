class AddFieldsForAutoQuote < ActiveRecord::Migration
  def change
    add_column :quotes, :auto_college_graduated_from, :string
    add_column :quotes, :auto_current_occupation, :string
  end
end
