class InvoiceItem < ActiveRecord::Base
  belongs_to :invoice
  validates :quantity, :product_name,:value, :presence => true

  attr_accessible :product_name, :value, :quantity, :invoice, :discount, :cis, :vat

  def name
    return "#{product_name}"
  end
end
