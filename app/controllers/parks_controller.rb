class ParksController < ApplicationController
    def index
       @parks =  ParksFacade.get_list(params[:state])  
       @parks_count = ParksFacade.parks_count(params[:state])
    end
end

