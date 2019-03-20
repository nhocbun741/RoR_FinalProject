class Cart < ApplicationRecord  
    # has_many :order_items
    # accepts_nested_attributes_for :order_items
    
  # def self.paypal_url(return_path)
    
  #       values = {
  #               business: "idfakecuatoi1-facilitator@gmail.com",
  #               return: "#{Rails.application.credentials.development[:app_host]}#{return_path}",
  #               notify_url: "#{Rails.application.credentials.development[:app_host]}/update",
  #               # invoice: id,
  #               cmd: "_cart",
  #             }
        
  #   order_items.each_with_index do |item, index|
  #     values.merge!({
  #       "amount_#{index + 1}" => item.unit_price
  #       # "item_name_#{index + 1}" => item.product.name,
  #       # "item_number_#{index + 1}" => item.product.identifier,
  #       # "quantity_#{index + 1}" => item.quantity
  #     })
  #     end
  #       "#{Rails.application.credentials.development[:paypal_host]}/cgi-bin/webscr?" +
  #        values.to_query
  # end

end