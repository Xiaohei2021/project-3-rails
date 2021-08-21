module GamesHelper
    def fields_for_publisher(g)
        if @publisher
            g.hidden_field :publisher_id, value: @publisher.id
        else
            render partial: "publisher_field", locals: {g: g}    
        end
    end

    def game_index_divergence
        # byebug
        if @publisher 
            render partial: "nested_games"
        else 
            render partial: "all_games" 
         end 
    end

     

end
