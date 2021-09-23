require_relative 'bike'

class DockingStation
DEFAULT_CAPACITY = 20

    def initialize
        @bikes = []
    end

    attr_reader :bike

    def release_bike
        fail "No bikes available" unless empty?
        @bikes.pop
    end

    def dock(bike)
        fail "Station is full" if full?
        @bikes << bike
        @bike = bike
    end

    private

    def full?
        @bikes.length >= DEFAULT_CAPACITY
    end

    def empty?
        @bikes.length > 0
    end

end
