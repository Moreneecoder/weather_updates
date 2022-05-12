module Queries
    class GetWeather < GraphQL::Schema::Resolver
        argument :city, String, required: true
        type String, null: false
        description "Query that gets current weather of user's city."

        def resolve(city:)
            "City name is #{city}!"
        end
    end
end