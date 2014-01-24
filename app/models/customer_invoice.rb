class CustomerInvoice < ActiveRecord::Base
  belongs_to :customer
  belongs_to :address
  belongs_to :ship_to_address,:class_name => 'Address'
  # attr_accessible :title, :body
  validates :customer,:address_id, :ship_to_address_id,:due_date, :presence => true
  attr_accessible :customer_id, :customer_invoice_items_attributes, :id, :due_date, :invoice_number , :address_id, :ship_to_address_id
  has_many :customer_invoice_items
  accepts_nested_attributes_for :customer_invoice_items, :allow_destroy => true

  scope :owned_by, ->(contact_id) { includes(:customer).where(:customers => {:contact_id => contact_id}) }

  def name
    return "#{id}"
  end

  def new

  end

  def edit
  end
end