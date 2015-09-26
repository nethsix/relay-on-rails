SimpleType = GraphQL::ObjectType.define do
  name "Simple"
  description "Simple"
  interfaces [NodeIdentification.interface]
  global_id_field :id
  field :name, !types.String, "Simple name"
end
