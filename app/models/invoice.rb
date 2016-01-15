class Invoice < ActiveRecord::Base
	belongs_to :customer
	validates :item_name, presence: true,
                    length: { minimum: 5 }

                    
end
