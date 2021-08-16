module GamesHelper
    def fields_for_publisher(g)
        if @publisher
            g.hidden_field :publisher_id, value: @publisher.id
        else
            render partial: "publisher_field", locals: {g: g}    
        end
    end

    def nested_game_index
        if @publisher 
            content_tag(:h1, "Here are all the games from #{@publisher.name}") 
            render partial: "nest_free_games" 
        else 
            content_tag(:h1, "Here are all the games")
            render partial: "nested_games" 
         end 
      
    end

     

end
