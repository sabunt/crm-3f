class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :num
      t.string :date
      t.belongs_to :costumer, index: true
      t.string :item_name
      t.integer :unit
      t.integer :price
      t.integer :price_total

      t.timestamps null: false
    end
  end
end
