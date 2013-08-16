ActiveAdmin.register_page "Dashboard" do
  menu :priority => 1
  content :title => proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Recent Invoices" do
          table_for Invoice.order("created_at desc").limit(5) do
            column :invoice_number do |invoice|
              link_to invoice.invoice_number, [:admin, invoice]
            end
            column :customer
            column :created_at
          end
          strong { link_to "View All Invoices", admin_invoices_path }
        end
      end
    end
  end
end  