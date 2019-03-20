class Payment < ApplicationRecord
  has_many :order_items
  def paypal_url return_path
    
    # binding.pry
    
    values = {
      business: "idfakecuatoi1-facilitator@gmail.com",
      return: "#{Rails.application.credentials.development[:app_host]}#{return_path}",
      notify_url: "#{Rails.application.credentials.development[:app_host]}/update",
      invoice: id,
      cmd: "_xclick",
      amount: amount
    }
    "#{Rails.application.credentials.development[:paypal_host]}/cgi-bin/webscr?" +
      values.to_query
  end

  # def paypal_url return_path
  #   values = {
  #     business: "idfakecuatoi1-facilitator@gmail.com",
  #     return: "#{Rails.application.credentials.development[:app_host]}#{return_path}",
  #     notify_url: "#{Rails.application.credentials.development[:app_host]}/update",
  #     invoice: id,
  #     upload: 1,
  #     cmd:"_xclick",
  #     amount: order.subtotal
  #   }
  #   "#{Rails.application.credentials.development[:paypal_host]}/cgi-bin/webscr?" +
  #     values.to_query
  # end
end