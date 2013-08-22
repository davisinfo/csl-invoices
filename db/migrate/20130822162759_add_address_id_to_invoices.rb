class AddAddressIdToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :address_id, :integer
  end
end
