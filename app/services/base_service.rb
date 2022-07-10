class BaseService
  def self.connection
    url = 'https://developer.nps.gov'
    Faraday.new(url: url)
  end
end
