class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :country
      t.string :email
      t.string :phone_number
      t.string :post_code
      t.string :stripe_token

      t.timestamps
    end
  end
end
