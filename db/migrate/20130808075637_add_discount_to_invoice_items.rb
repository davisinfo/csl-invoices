class AddDiscountToInvoiceItems < ActiveRecord::Migration
  def change
    add_column :invoice_items, :discount, :decimal, :precision => 8, :scale => 2
  end
end
