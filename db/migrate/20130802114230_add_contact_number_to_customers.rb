class AddContactNumberToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :contact_number, :string
  end
end
