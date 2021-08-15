module GamesHelper
    def fields_for_publisher(g)
        if @publisher
            g.hidden_field :publisher_id, value: @publisher.id
        else
            render partial: "publisher_fields", locals: {g: g}    
        end

    end
end
