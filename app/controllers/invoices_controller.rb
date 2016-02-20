class InvoicesController < ApplicationController
	def index
    	@invoice = Invoice.all
    	
    end
	
	def show
		@invoice = Invoice.find(params[:id])
		  respond_to do |format|
	      format.html

	      format.pdf do
	      
        	render :pdf => "invoice", :invoice => 'show.pdf.slim', encoding: "UTF-8" 
	      end
	    end

  	end

  	def new
 		@invoice = Invoice.new
 	end
	
	def edit
	  	@invoice = Invoice.find(params[:id])
	end


	def create
		@invoice = Invoice.new(invoice_params)
	  		if @invoice.save
	  		redirect_to @invoice
	  		else
	    render 'new'
	  	end
	end

	def update
	  	@invoice = Invoice.find(params[:id])
		if @invoice.update(invoice_params)
		  redirect_to @invoice
		else
		   render 'edit'
		end
	end
	def destroy
	  @invoice = Invoice.find(params[:id])
	  @invoice.destroy
	 
	  redirect_to invoices_path
	end

	private
  	def invoice_params
    	params.require(:invoice).permit(:customer_id, :item_name, :unit, :price, :price_total)
  	end


end
