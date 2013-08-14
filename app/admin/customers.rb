ActiveAdmin.register Customer do
  index do
    column :id
    column :first_name
    column :last_name
    column :company
    column :address_1
    column :address_2
    column :city
    column :postcode
    column :created_at
    column :updated_at
    column :contact_number
    column :email
    column "Issued invoices", :id do |invoice|
            link_to "Show invoices","/admin/invoices?utf8=%E2%9C%93&q%5Bcustomer_id_eq%5D="+ invoice.id.to_s+ '&commit=Filter&order=id_desc'
    end
    default_actions

  end
  member_action :show_invoice do
    @customer = Customer.find(params[:id])

  end
  action_item :only => :show do

  link_to "Show invoices","/admin/invoices?utf8=%E2%9C%93&q%5Bcustomer_id_eq%5D="+ Customer.find(params[:id]).id.to_s+ '&commit=Filter&order=id_desc'
  end
end