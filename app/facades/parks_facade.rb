class ParksFacade
    def self.get_list(state)
        ParksService.get_list_of_parks(state)
    end
end