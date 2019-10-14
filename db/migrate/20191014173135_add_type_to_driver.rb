class AddTypeToDriver < ActiveRecord::Migration[6.0]
  def change
    add_column :drivers, :type, :string
  end
end
