class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :num
      t.string :date
      t.string :client
      t.string :client_inn
      t.string :client_kpp
      t.text :client_adress
      t.string :item_name
      t.integer :unit
      t.integer :price
      t.integer :price_total

      t.timestamps null: false
    end
  end
end
