class InvoicesController < ApplicationController
	def index
    	@invoice = Invoice.all
  	end
	
	def show
	    @invoice = Invoice.find(params[:id])

	    respond_to do |format|
	      format.html
	      format.pdf do
	      
        	render :pdf => "report", :invoices => 'show.html.slim', encoding: "UTF-8"
	      end
	    end

  	end

	def create
  		@invoice = Invoice.new(invoice_params)
   		@invoice.save
  		redirect_to @invoice
	end

 	def new
	end
	private
  	def invoice_params
    	params.require(:invoices).permit(:num, :date, :client, :client_inn, :client_kpp, :client_adress, :item_name, :unit, :price, :price_total)
  	end

end
