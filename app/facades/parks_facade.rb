class ParksFacade
    def self.get_list(state)
        json = ParksService.get_list_of_parks(state)

        json[:data].map do |park|
            Park.new(park)
        end
    end

    def self.parks_count(state)
        json = ParksService.get_list_of_parks(state)[:total]
    end
end

