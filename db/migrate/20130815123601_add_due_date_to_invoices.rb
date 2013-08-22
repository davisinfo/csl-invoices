class AddDueDateToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :due_date, :integer
  end
end
