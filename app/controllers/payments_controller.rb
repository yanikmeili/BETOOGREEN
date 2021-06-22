class PaymentsController < ApplicationController
  def new
    @purchase = current_user.purchases.where(state: 'pending').find(params[:purchase_id])
  end
end
