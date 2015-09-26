class GraphqlController < ApplicationController
  protect_from_forgery :except => [:simple]
  
  def simple
    query_string = 'query SimpleQuery { simple { name } }'
    response_json = RelayOnRailsSchema.execute(query_string)

    render :json => response_json, content_type: "application/json"
  end
end
