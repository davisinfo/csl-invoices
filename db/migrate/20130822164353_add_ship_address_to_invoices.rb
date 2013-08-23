class AddShipAddressToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :ship_to_address_id, :integer
  end
end
