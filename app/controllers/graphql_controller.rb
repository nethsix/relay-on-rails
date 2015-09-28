class GraphqlController < ApplicationController
  protect_from_forgery :except => [:create]
  
  def create
    query_string = params[:query]
    query_variables = params[:variables] || {}
    query = GraphQL::Query.new(RelayOnRailsSchema, query_string, variables: query_variables)
    render json: query.result
  end
end
