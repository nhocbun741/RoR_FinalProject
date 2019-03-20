class PaymentsController < ApplicationController
  before_action :update, only: :show
  protect_from_forgery except: [:update]
  before_action :payment_params, only: [:create]
  def new
    @payment = Payment.new
   end

  def create
    
    # binding.pry

    @payment = Payment.new(payment_params)
    @order = current_order
    @amount = @order.subtotal
     if @payment.save
       redirect_to @payment.paypal_url(payment_path(@payment))
     else
       render :new
     end
  end
  def show
    @payment = Payment.find(params[:id])
    if @payment.nil?
      redirect_to root_path
    end
  end

  def update
    params.permit!
    status = params[:payment_status]
    if status == "Completed"
      @payment = Payment.find params[:invoice]
      @payment.update_attributes status: status,
        transaction_id: params[:txn_id], purchased_at: Time.now
    end
  end
  def payment_params
    params.require(:payment).permit(:amount)
  end
end