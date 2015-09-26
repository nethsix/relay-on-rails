FeedbackChannelType = GraphQL::ObjectType.define do
  name "FeedbackChannel"
  description "Feedback Channel"
  interfaces [NodeIdentification.interface]

  global_id_field :id
  field :name, !types.String, "The feedback channel name"
  connection :results, -> { ResultType.connection_type }, "Results of the feedback channel"
  connection :group_results_list, -> { GroupResultListType.connection_type }, "Grouped results list of the feedback channel"
end
