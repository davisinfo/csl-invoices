class CreateInvoiceItems < ActiveRecord::Migration
  def change
    create_table :customer_invoice_items do |t|
      t.references :invoice
      t.decimal :value, :precision => 8, :scale => 2
      t.string :product_name

      t.timestamps
    end
    add_index :customer_invoice_items, :invoice_id
  end
end
