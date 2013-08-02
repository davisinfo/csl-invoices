class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.references :customer

      t.timestamps
    end
    add_index :invoices, :customer_id
  end
end
