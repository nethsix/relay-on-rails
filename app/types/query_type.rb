QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root for this schema"

  field :feedbackChannelRoot do
    type FeedbackChannelType
    description "Feedback Channel"
    argument :unique_hash, !types.String, "FeedbackChannel unique hash"
    resolve -> (obj, args, ctx) do
      Survey.find_by_unique_hash(args[:unique_hash])
    end
  end

  field :simple do
    type SimpleType
    description "Simple Stuff"
    resolve -> (obj, args, ctx) do
      Hashie::Mash.new({ name: 'Simpleton' })
    end
  end

  field :node, field: NodeIdentification.field
end
