class AddCisToInvoiceItems < ActiveRecord::Migration
  def change
    add_column :invoice_items, :cis, :boolean
  end
end
