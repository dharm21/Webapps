class ChargesController < ApplicationController
  protect_from_forgery with: :null_session
  def index
  end
  def new
    @charge = Charge.new
  end

  def create
   
    Stripe.api_key = "sk_test_FPBhmFiCuqecJroPOgdSIiXW"
    @amount = 5000

    customer = Stripe::Customer.create(:email => params[:stripeEmail],
    :source => params[:stripeToken])

    charge = Stripe::Charge.create(:name => params[:name], :brand =>params[:brand], :customer => params[:customer], :funding => params[:funding], :customer_id => params[:customer])

    rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  def stripe_response
    Stripe.api_key = "sk_test_FPBhmFiCuqecJroPOgdSIiXW"
    token = params[:stripeToken]
   
    # debugger
    # @customers = customers.select do |c|
    #   c.email.eql?(params[:stripeEmail])
    #   if @customers.present?
    #     customer = @customers.first
    #   else
    #     customer = Stripe::Customer.create( :source => token, :email =>params[:stripeEmail] )
    #   end
    # end
    #@charge = Stripe::Charge.create(charge_params)
  end
end