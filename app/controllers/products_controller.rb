class ProductsController < ApplicationController
    def index 
    end 

    def add
        # Get the item from the path
        
       
        # Load the cart from the session, or create a new empty cart.
        cart << params[:item] if not params[:item].nil?
        flash[:notice] = "Your cart has been successfully updated"
        redirect_to root_path
      end
end 
