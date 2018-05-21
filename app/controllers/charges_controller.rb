class ChargesController < ApplicationController

  def new
    @stripe_btn_data = {
      key: "#{ Rails.configuration.stripe[:publishable_key] }",
      description: "Premium Membership - #{current_user.email}",
      amount: @amount
    }
  end

  def create
    @amount = 1500

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => "Premium Membership - #{current_user.email}",
      :currency    => 'usd'
    )

    flash[:notice] = 'Thank you for your purchase. You are now a Premium Member.'
    redirect_to user_path(current_user)

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

end
