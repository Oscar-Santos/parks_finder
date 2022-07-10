class ParksService < BaseService
  def self.get_list_of_parks(state)
    end_point = '/api/v1/parks'
    end_point = 'https://developer.nps.gov/api/v1/parks'
    response = connection.get(end_point) do |faraday|
      faraday.params['api_key'] = ENV['parks_api_key']
      faraday.params['stateCode'] = state
    end
    JSON.parse(response.body, symbolize_names: true)
  end

end
