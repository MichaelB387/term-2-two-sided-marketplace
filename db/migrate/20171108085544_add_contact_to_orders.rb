class AddContactToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :contact, :integer
  end
end
