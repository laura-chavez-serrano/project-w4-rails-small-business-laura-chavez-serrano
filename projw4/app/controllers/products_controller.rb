
class ProductsController < ApplicationController
    def index
        
        @categories = Convert.find_by_sql("SELECT category FROM converts GROUP BY category").map &:category
        @products = params[:category].blank? ? Convert.all.where("quantity > 0") : Listing.find_all_by_category(params[:category])
      
        # @productsa = Convert.all.where("quantity > 0")
        # @selection=params_convert.category
        #  @products = @productsa.sort_by { |h| h.category }
    end


   #details of product
     def show
        
        @product = Convert.find{|p| p.id == params[:id].to_i}
     end

     private

     def params_convert
            params.permit(:category)
     end
    

    
   
end
