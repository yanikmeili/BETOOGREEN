class StripeCheckoutSessionService
  def call(event)
    purchase = Purchase.find_by(checkout_session_id: event.data.object.id)
    purchase.update(state: 'paid')
  end
end
