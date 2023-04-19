class ParksFacade
    def self.get_list(state)
        json = ParksService.get_list_of_parks(state)

        json[:data].map do |park|
            Park.new(parks)
        end
    end
end

# - full name of the park
# - description
# - direction info
# - standard hours for operation
