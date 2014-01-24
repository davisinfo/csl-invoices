ActiveAdmin.register_page "Dashboard", :namespace => :clientarea do

  menu :priority => 1, :label => proc { I18n.t("active_admin.dashboard") }

      content :title => proc { I18n.t("active_admin.dashboard") } do

         section "Recent Invoices" do

             table_for CustomerInvoice.joins(:customer).where(:customers => {:contact_id => current_contact.id})  do

             column :id do |invoice|
               link_to invoice.id, [:clientarea, invoice]
             end

             column :customer
             column :created_at
             end


           strong {link_to "View All Invoices", clientarea_invoices_path}
         end
    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end


    # end
  end # content
end
