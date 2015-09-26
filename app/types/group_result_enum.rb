GroupResultEnum = GraphQL::EnumType.define do
  name "GroupResultEnum"
  description "Group results belong to either one of these"
  Result::GROUP_TYPES.each do |numeric, desc|
    value(desc, "#{desc}", value: numeric)
  end
end
