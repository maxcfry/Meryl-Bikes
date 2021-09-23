require_relative 'bike'

class DockingStation

    def initialize
    end

    attr_reader :bike

    def release_bike
        raise StandardError.new "No bikes available" unless @bike
        @bike
    end

    def dock(bike)
        fail "Station is full" if @bike
        @bike = bike
    end
end
