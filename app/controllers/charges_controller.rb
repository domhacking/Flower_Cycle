class ChargesController < ApplicationController
  def new
  end

  def create
    # Amount in cents
    @amount = 500

    customer = Stripe::Customer.create(
      :email => currentUser.email,
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => user.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'gbp'
    )

    # Purchase.create(user: current_user, amount: @amount, currency: charge.currency, bouquet_id: , )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end
    
end
