require_relative 'bike'

class DockingStation

    def initialize
        @bikes = []
    end

    attr_reader :bike

    def release_bike
        fail "No bikes available" unless @bikes.length > 0
        @bikes.pop
    end

    def dock(bike)
        fail "Station is full" if @bikes.length > 19

        @bikes << bike
        @bike = bike
    end
end
