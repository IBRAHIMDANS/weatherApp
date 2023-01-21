//
//  CitiesData.swift
//  weatherAppSwift
//
//  Created by Benjamin BENOIT on 22/05/2019.
//  Copyright © 2019 Benjamin Ibrahima. All rights reserved.
//

import Foundation
import CoreLocation

struct CitiesData {
    static let list = [
        City(name: "San Francisco", coordinates: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)),
        City(name: "London", coordinates: CLLocationCoordinate2D(latitude: 51.5074, longitude: 0.1278)),
        City(name: "Paris", coordinates: CLLocationCoordinate2D(latitude: 48.8566, longitude: 2.3522)),
        City(name: "Caracas", coordinates: CLLocationCoordinate2D(latitude: 10.4806, longitude: -66.9036)),
        City(name: "Cairo", coordinates: CLLocationCoordinate2D(latitude: 30.0444, longitude: 31.2357)),
        City(name: "New York", coordinates: CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060)),
        City(name: "Sydney", coordinates: CLLocationCoordinate2D(latitude: -33.8688, longitude: 151.2093)),
        City(name: "Tokyo", coordinates: CLLocationCoordinate2D(latitude: 35.6895, longitude: 139.6917)),
        City(name: "Beijing", coordinates: CLLocationCoordinate2D(latitude: 39.9042, longitude: 116.4074)),
        City(name: "Bangkok", coordinates: CLLocationCoordinate2D(latitude: 13.7563, longitude: 100.5018)),
        City(name: "Johannesburg", coordinates: CLLocationCoordinate2D(latitude: -26.2041, longitude: 28.0473)),
        City(name: "Kinshasa", coordinates: CLLocationCoordinate2D(latitude: -4.4419, longitude: 15.2663)),
        City(name: "Buenos Aires", coordinates: CLLocationCoordinate2D(latitude: -34.6037, longitude: -58.3816)),
        City(name: "Rio de Janeiro", coordinates: CLLocationCoordinate2D(latitude: -22.9068, longitude: -43.1729)),
        City(name: "Moscow", coordinates: CLLocationCoordinate2D(latitude: 55.7558, longitude: 37.6173)),
        City(name: "Anchorage", coordinates: CLLocationCoordinate2D(latitude: 61.2181, longitude: -149.9003)),
        City(name: "Honolulu", coordinates: CLLocationCoordinate2D(latitude: 21.3069, longitude: -157.8583)),
        City(name: "Bamako", coordinates: CLLocationCoordinate2D(latitude: 12.639232, longitude: -8.002889)),
        City(name: "New Delhi", coordinates: CLLocationCoordinate2D(latitude: 28.613939, longitude: 77.209023)),
        City(name: "Marrakesh", coordinates: CLLocationCoordinate2D(latitude: 31.629473, longitude: -7.981084)),
        City(name: "Tunis", coordinates: CLLocationCoordinate2D(latitude: 36.806496, longitude: 10.181532)),
        City(name: "Bretagne", coordinates: CLLocationCoordinate2D(latitude: 47.002789, longitude: 1.682210)),
        City(name: "Casablanca", coordinates: CLLocationCoordinate2D(latitude: 33.573109, longitude: -7.589843)),
        City(name: "Fès", coordinates: CLLocationCoordinate2D(latitude: 34.018124, longitude: -5.007845)),
        City(name: "Beyrouth", coordinates: CLLocationCoordinate2D(latitude: 33.888069, longitude: 35.503960)),
        City(name: "Noumea", coordinates: CLLocationCoordinate2D(latitude: -22.2711, longitude: 166.4416))
    ]
}
