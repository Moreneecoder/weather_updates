module Queries
    class GetWeather < GraphQL::Schema::Resolver
        argument :name, String, required: true

        type String, null: false

        def resolve(name:)
            "City name is #{name}!"
        end
    end
end