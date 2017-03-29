class CartsController < ApplicationController

    require 'sendgrid-ruby'
    include SendGrid

  def index
     @cart = Cart.where(cid: session[:user_id], flag:1)
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
    cart.delete
    redirect_to carts_path
  end

  def checkout

    cart = Cart.where(cid: session[:user_id], flag:1)
    # send_email
    cart.each do |c|
      c.update flag: 2
    end 
    
   @cart = Cart.where(cid: session[:user_id], flag:1)
  render "index"
  end


#   def send_email


# from = Email.new(email: 'the-shoe-store@example.com')
# to = Email.new(email: 'pabou061@uottawa.ca')
# subject = 'Sending with SendGrid is Fun'
# content = Content.new(type: 'text/plain', value: 'and easy to do anywhere, even with Ruby')
# mail = Mail.new(from, subject, to, content)

# sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'], host: 'https://api.sendgrid.com')
# response = sg.client.mail._('send').post(request_body: mail.to_json)
# puts response.status_code
# puts response.body
# puts response.headers
#   end

end