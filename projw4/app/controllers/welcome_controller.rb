
class WelcomeController < ApplicationController
  def index
      #Create a method that identifies items on clearance and adjusts the price.
            # Apply a 10% discount on the price for items that are in 'good' condition.
            # Apply a 20% discount on the price for items that are in 'average' condition.
            # For each clearance item on the page, make sure that the site indicates that the item is 
        # on clearance (next to the price, for instance).
        @products = Convert.all.where("quantity > 0")

        @products.each do |product|
                        product.onclearance= "ON CLEARANCE"
                      if product.condition == "good" 
                          product.discount = "10%"
                          product.priced = (0.9 * product.price)
                      elsif product.condition == "average" 
                          product.discount = "20%"
                          product.priced= (0.8 * product.price)
                      else 
                          product.discount = "0%"
                          product.onclearance=" "
                          product.priced = product.price
                      end
                      product.update(:priced => product.priced )
                    end
   end
  

end
