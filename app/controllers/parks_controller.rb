class ParksController < ApplicationController
  def index
    @parks = ParksFacade.get_list(params[:state])
    @parks_count = ParksFacade.parks_count(params[:state])
  end
end

=begin
api consumption
1) set it up services
- set up the connection
- make the call

2) poros
-def init
-attr reader

3)set up the facades
-convert the json into poros


tests

base service

vcr
=end
