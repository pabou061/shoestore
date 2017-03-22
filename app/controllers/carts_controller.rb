class CartsController < ApplicationController



def index
   @cart = Cart.where(cid: session[:user_id])
end


def create


  if session[:user_id]
      cart= Cart.new(cart_params) 
      if cart.save
        flash[:notice] = "Successfully added to your cart"

      else
        flash[:error] = "Please Make sure you checked everything"
      end 
  else 
      flash[:error] = "You have to login to add to cart"
  end
  redirect_to :back
end

def cart_params
    params.require(:cart).permit(:sid,:cid,:sizeid,:colorid,:quantity,:flag)
end

end