module ReviewsHelper
    def review_index_divergence
        # byebug
        if @game 
            
            render partial: "nested_reviews"
        else 
            
            render partial: "all_reviews" 
         end 
      
    end
end
