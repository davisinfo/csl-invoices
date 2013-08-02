class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :postcode

      t.timestamps
    end
  end
end
