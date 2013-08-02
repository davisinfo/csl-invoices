class Customer < ActiveRecord::Base
  attr_accessible :address_1, :address_2, :city, :company, :first_name, :last_name, :postcode, :contact_number

  def name
    return "#{first_name} #{last_name}"
  end
end