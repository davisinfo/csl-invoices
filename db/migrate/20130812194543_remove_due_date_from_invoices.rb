class RemoveDueDateFromInvoices < ActiveRecord::Migration
  def up
    remove_column :invoices, :due_date
  end

  def down
    add_column :invoices, :due_date, :date
  end
end
