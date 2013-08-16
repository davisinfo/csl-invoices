class CustomerMailer < ActionMailer::Base
  default from: "r_many17@yahoo.com"

  def email_invoice(invoice,pdf)
    @invoice = invoice
    mail(:subject => 'CSL Invoice No.'+invoice.invoice_number.to_s, :to => invoice.customer.email) do |format|
      format.html
      format.pdf do
        require 'wkhtmltopdf-heroku'
        attachments['print_invoice.pdf']  =pdf
      end
    end
  end
end