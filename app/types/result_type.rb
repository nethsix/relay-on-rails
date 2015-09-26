ResultType = GraphQL::ObjectType.define do
  name "Result"
  description "Result of FeedbackChannel"
  interfaces [NodeIdentification.interface]

  global_id_field :id
  field :integer_1, !types.Int, "Result#integer_1"
  field :string_1, !types.Int, "Result#string_1"
end
