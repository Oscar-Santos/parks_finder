class Park
  attr_reader :name,
              :description,
              :direction,
              :hours_of_operation

  def initialize(data)
    @name = data[:fullName]
    @description = data[:description]
    @direction = data[:directionsInfo]
    @hours_of_operation = data[:operatingHours].first[:standardHours]
  end
end

# - full name of the park
# - description
# - direction info
# - standard hours for operation
