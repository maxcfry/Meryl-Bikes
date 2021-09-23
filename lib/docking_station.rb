require_relative 'bike'

class DockingStation

    def initialize
    end

    attr_reader :bike

    def release_bike
        Bike.new
    end

    def dock(bike)
        @bike = bike
    end
end
