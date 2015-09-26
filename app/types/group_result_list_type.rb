GroupResultListType = GraphQL::ObjectType.define do
  name "GroupResultListType"
  description "Group result list of FeedbackChannel, e.g., open, in_progress, done"
  interfaces [NodeIdentification.interface]

  global_id_field :id
  field :name, GroupResultEnum, "The group result type"
  connection :list, -> { ResultType.connection_type }, "Results of the feedback channel"
end
