class CreateAcceptances < ActiveRecord::Migration
  def change
    create_table :acceptances do |t|
    	t.string :status 
    	t.belongs_to :invoice, index: true
      	t.timestamps null: false
    end
  end
end




