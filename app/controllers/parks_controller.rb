class ParksController < ApplicationController
    def index
       @parks =  ParksFacade.get_list(params[:state])   
    end
end

=begin
API CONSUMPTION
1) set up the services
- set up the connection
- make the call

2)poros
- def initialize
- attr reader

3) facades
- convert the json into poros
=end