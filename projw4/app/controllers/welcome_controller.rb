
class WelcomeController < ApplicationController
  def index
      #Create a method that identifies items on clearance and adjusts the price.
            # Apply a 10% discount on the price for items that are in 'good' condition.
            # Apply a 20% discount on the price for items that are in 'average' condition.
            # For each clearance item on the page, make sure that the site indicates that the item is 
        # on clearance (next to the price, for instance).
        @products = Convert.all.where("quantity > 0")
        @products.each do |product|
                      if product.condition == "good" 
                          product.discount = "10%"
                          product.onclearance= "ON CLEARANCE"
                          discount= (product.price.to_i * 0.10)
                          (0.9 * product.price.to_i).to_i
                      elsif product.condition == "average" 
                          product.discount = "20%"
                          product.onclearance= "ON CLEARANCE"
                          discount= (product.price.to_i * 0.20)
                          (0.8 * product.price.to_i).to_i
                      else 
                          product.discount = "0%"
                          product.onclearance=" "
                          
                      end
                    end
   end
  

end
