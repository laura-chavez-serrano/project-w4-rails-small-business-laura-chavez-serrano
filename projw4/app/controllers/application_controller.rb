class ApplicationController < ActionController::Base
    # def fill_product
        #Create a method that identifies items on clearance and adjusts the price.
            # Apply a 10% discount on the price for items that are in 'good' condition.
            # Apply a 20% discount on the price for items that are in 'average' condition.
            # For each clearance item on the page, make sure that the site indicates that the item is 
        # on clearance (next to the price, for instance).
    #         price = 0.0
    #         price = product.price
    #         discount=0
    #     if product.condition == "good" 
    #         product.discount = "10%"
    #         product.onclearance= "ON CLEARANCE"
    #         discount= (price.to_i * 0.10)
    #         price = price.to_i - discount.to_i 
    #     elsif product.condition == "average" 
    #         product.discount = "20%"
    #         product.onclearance= "ON CLEARANCE"
    #         discount= (price.to_i * 0.20)
    #         price = price.to_i - discount.to_i 
    #     else 
    #         product.discount = "0%"
    #         product.onclearance=" "
    #         price = product.price
    #     end
        
        
        
    #     product.priced = price
        
    #     # Do not show items on the site that have a quantity of 0.
       
    #     quantity=product.quantity.to_i
    #     if quantity>0
            
    #     @products << product 
    #     counter +=1
    #     end
    # end
end
