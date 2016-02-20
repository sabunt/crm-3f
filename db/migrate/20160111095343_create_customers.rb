class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :client
      t.string :client_inn
      t.string :client_kpp
      t.text :client_adress
      t.string :client_site
      t.string :client_tel
      t.string :client_name_tel
      t.string :client_email
      t.string :client_ogrn
      t.string :client_ks
      t.string :client_rs
      t.string :client_bik
      t.text :client_bank

      t.timestamps null: false
    end
  end
end
