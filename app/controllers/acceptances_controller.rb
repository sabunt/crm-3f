class AcceptancesController < ApplicationController
	def index
    	@аcceptances = Acceptances.all
    	
     	  	end
	
	def show
	    @аcceptances = Acceptances.find(params[:id])
 		@customers = Customer.find(params[:id])
	    respond_to do |format|
	      format.html
	      format.pdf do
	      
        	render :pdf => "аcceptance", :аcceptances => 'show.pdf.slim', encoding: "UTF-8" 
	      end
	    end

  	end
  	def new
 		@аcceptances = Acceptances.new
 	end
	

	def create
  		@аcceptances = Acceptances.new(аcceptances_params)
  		
   		if @аcceptances.save
  			redirect_to @аcceptances
  		else
	    render 'new'
	  	end
	end


	def destroy
	  @аcceptances = Acceptances.find(params[:id])
	  @аcceptances.destroy
	 
	  redirect_to аcceptances_path
	end

	private
  	def аcceptances_params
    	params.require(:аcceptances).permit(:status, :invoice_id)
  	end



end
