def number(bus_stops)
    bus_stops = bus_stops.transpose
    return bus_stops[0].inject(:+) - bus_stops[1].inject(:+)
end