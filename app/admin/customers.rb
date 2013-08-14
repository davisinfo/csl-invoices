ActiveAdmin.register Customer do
  member_action :show_invoice do
    @customer = Customer.find(params[:id])

  end
  action_item :only => :show do

  link_to "Show invoices","/admin/invoices?utf8=%E2%9C%93&q%5Bcustomer_id_eq%5D="+ Customer.find(params[:id]).id.to_s+ '&commit=Filter&order=id_desc'
  end
end