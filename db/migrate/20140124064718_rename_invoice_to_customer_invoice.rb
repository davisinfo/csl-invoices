class RenameInvoiceToCustomerInvoice < ActiveRecord::Migration
  def up
    rename_table :invoices, :customer_invoices
  end

  def down
    rename_table :customer_invoices, :invoices
  end
end
