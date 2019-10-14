class AddTypeToCustomer < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :type, :string
  end
end
