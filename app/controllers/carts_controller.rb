class CartsController < ApplicationController



  def index
     @cart = Cart.where(cid: session[:user_id])
  end


  def create
    if session[:user_id]
        cart = Cart.find_by_sql ["Select o.* 
        from shoestore.orders o 
        where o.cid=? and o.sid=? and o.sizeid=? and o.colorid=? and flag=1", session[:user_id],cart_params[:sid],cart_params[:sizeid],cart_params[:colorid] ]

        if cart.empty? 
            cart= Cart.new(cart_params) 
            if cart.save
              flash[:notice] = "Successfully added to your cart"

            else
              flash[:error] = "Please Make sure you checked everything"
            end 
        else
            cart.each do |c|
                c.update(quantity: c.quantity + cart_params[:quantity].to_i)
            end
            flash[:notice] = "Successfully updated your cart"
        end
       
    else 
        flash[:error] = "You have to login to add to cart"
    end
    redirect_to :back
  end

  def cart_params
      params.require(:cart).permit(:sid,:cid,:sizeid,:colorid,:quantity,:flag)
  end

  def destroy
    cart=Cart.find params[:id]
    cart.destroy
    redirect_to carts_path
  end

end