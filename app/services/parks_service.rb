class ParksService
    def self.get_list_of_parks(state)
    end_point = '/api/v1/parks'
        response = connection.get(end_point) do |faraday|
            faraday.params['api_key'] = ENV['parks_api_key']
            faraday.params['stateCode'] = state
        end
        JSON.parse(response.body, symbolize_names: true)
    end

    def self.connection
        url = 'https://developer.nps.gov'
        Faraday.new(url: url)
    end
end