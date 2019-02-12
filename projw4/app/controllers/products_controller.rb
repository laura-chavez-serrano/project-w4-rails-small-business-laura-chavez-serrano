
class ProductsController < ApplicationController
    def index
        
        @categories = Convert.find_by_sql("SELECT category FROM converts GROUP BY category").map &:category
       if params[:category].blank? 
        @productsa = Convert.all.where("quantity > 0")
         @products = @productsa.sort_by { |h| h.category }
       else
        @products = Convert.where(category: params[:category])
       end
        
    end


   #details of product
     def show
        
        @product = Convert.find{|p| p.id == params[:id].to_i}
     end

    
   
end
