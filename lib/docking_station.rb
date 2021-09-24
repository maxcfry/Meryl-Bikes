require_relative 'bike'

class DockingStation
DEFAULT_CAPACITY = 20

    def initialize(capacity = DEFAULT_CAPACITY)
        @bikes = []
        @broken_bikes = []
        @capacity = capacity 
    end

    attr_reader :bike, :capacity

    def release_bike
        fail "No bikes available" unless empty? 
        @bikes.pop
    end

    def dock(bike)
        fail "Station is full" if full?
        if bike.broken? 
            @broken_bikes << bike
        else 
            @bikes << bike
        end
            @bike = bike  
    end

    private

    attr_reader :bikes

    def full?
        bikes.length >= capacity 
    end

    def empty?
        bikes.length > 0
    end

end
