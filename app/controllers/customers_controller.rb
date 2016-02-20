class CustomersController < ApplicationController
	before_action :load_customers, only: [:show, :edit]

	def index
    	@customers = Customer.all
  	end
	
	def show
  	end
  	def new
 		@customers = Customer.new
 	end
	def edit
	end

	def create

  		

  		@customers = Customer.new(customers_params)
   		if @customers.save
  			redirect_to @customers
  		else
	    render 'new'
	  	end
	end

	def update
	  	@customers = Customer.find(params[:id])
		if @customers.update(customers_params)
		  redirect_to @customers
		else
		   render 'edit'
		end
	end
	def destroy
	  @customers = Customer.find(params[:id])
	  @customers.destroy
	 
	  redirect_to customers_path
	end

	private
	def load_customers
		@customers = Customer.find(params[:id])
	end
  	def customers_params
    	params.require(:customer).permit(:client, :client_name_tel, :client_inn,:client_kpp, :client_adress, :client_site, :client_tel, :client_email, :client_ogrn, :client_ks, :client_rs, :client_bik, :client_bank)
  	end


end

