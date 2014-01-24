class Ability < CoreAbility
  include CanCan::Ability
  def initialize(user)
    super(user)
    if !user.is_a?(AdminUser) then
      user ||= Contact.new
      #can :create, Invoice
      #can :manage, Invoice
      can :manage, CustomerInvoice, CustomerInvoice.owned_by(user.id) do |invoice|
        invoice.customer.nil? || invoice.customer.contact_id == user.id
      end
      can :manage, CustomerInvoiceItem, :invoice => { :customer => { :contact_id => user.id }}
      can :create, Customer
      can :manage, Customer, :contact_id => user.id
    end
  end
end