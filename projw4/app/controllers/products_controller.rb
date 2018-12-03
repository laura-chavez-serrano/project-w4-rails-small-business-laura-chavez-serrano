require 'csv'
class ProductsController < ApplicationController
    def index
        
        @products = fill_product
        # @products.sort_by { |h| h[:category] }
     end


   #details of product
     def show
        @products = fill_product
        @product = @products.find{|p| p.id == params[:id].to_i}
     end

         #fill information from CSV to @product array
     def fill_product
        # desc "import stock from CSV"
        @products =[]
        counter = 1
        CSV.foreach(Rails.root + "data/faust_inventory.csv", headers: true) do |row|
        product = Product.new
        product.id = counter
        product.pid = row.to_h["pid"] 
   
            #details in Show
            product.description= row.to_h["description"]
            product.price= row.to_h["price"]
            product.priced= row.to_h["priced"]
            product.condition= row.to_h["condition"]
            product.dimension_w= row.to_h["dimension_w"]
            product.dimension_l= row.to_h["dimension_l"]
            product.dimension_h= row.to_h["dimension_h"]
            product.img_file= row.to_h["img_file"]
            path=product.img_file
            # Rails.application.assets.find_asset(path) != nil
            product.category= row.to_h["category"]

        #list Index 
        product.item = row.to_h["item"]
        
        product.quantity= row.to_h["quantity"]
        product.onclearance=row.to_h["onclearance"]
        #Create a method that identifies items on clearance and adjusts the price.
            # Apply a 10% discount on the price for items that are in 'good' condition.
            # Apply a 20% discount on the price for items that are in 'average' condition.
            # For each clearance item on the page, make sure that the site indicates that the item is 
        # on clearance (next to the price, for instance).
            price = 0.0
            price = product.price
            discount=0
        if product.condition == "good" 
            product.discount = "10%"
            product.onclearance= "ON CLEARANCE"
            discount= (price.to_i * 0.10)
            price = price.to_i - discount.to_i 
        elsif product.condition == "average" 
            product.discount = "20%"
            product.onclearance= "ON CLEARANCE"
            discount= (price.to_i * 0.20)
            price = price.to_i - discount.to_i 
        else 
            product.discount = "0%"
            product.onclearance=" "
            price = product.price
        end
        
        
        
        product.priced = price
        
        # Do not show items on the site that have a quantity of 0.
        quantity=0
        quantity=product.quantity.to_i
        if quantity>0
            
        @products << product 
        counter +=1
        end
    end
    @products
    end

    
   
end
