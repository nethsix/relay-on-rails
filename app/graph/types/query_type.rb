QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root for this schema"

  field :simple do
    type SimpleType
    description "Simple Stuff"
    resolve -> (obj, args, ctx) do
      { name: 'Simpleton' }
    end
  end

  field :node, field: NodeIdentification.field
end
