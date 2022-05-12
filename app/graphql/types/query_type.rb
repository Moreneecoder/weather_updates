module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"

    field :city, String, null: false do
      description "Query that gets current weather of user's city."

      argument :name, String, required: true
    end
    
    # def test_field
    #   "Hello World!"
    # end

    def city(name:)
      "City name is #{name}!"
    end
  end
end
