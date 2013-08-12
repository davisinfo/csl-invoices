class AddVatToInvoiceItems < ActiveRecord::Migration
  def change
    add_column :invoice_items, :vat, :boolean
  end
end
