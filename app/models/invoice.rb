class Invoice < ActiveRecord::Base
  belongs_to :customer
  # attr_accessible :title, :body
  attr_accessible :customer_id, :invoice_items_attributes, :id
  has_many :invoice_items
  accepts_nested_attributes_for :invoice_items, :allow_destroy => true

  def name
    return "#{id}"
  end

  def new

  end

  def edit
  end
end
