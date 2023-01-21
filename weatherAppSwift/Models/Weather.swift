//
//  Weather.swift
//  weatherAppSwift
//
//  Created by Ibrahima DANSOKO on 22/05/2019.
//  Copyright © 2019 Benjamin Ibrahima. All rights reserved.
//

import Foundation

struct Weather: Decodable {
    var currently: Currently
    var timezone: String
    var hourly: Hourly
    var daily : Daily
}
struct Currently : Decodable {
    var icon: String
    var temperature: Double
    var summary: String
    var pressure: Double
    var uvIndex: Int
    var windSpeed: Double
    var humidity: Double
}
struct Hourly:Decodable {
    var summary: String
    var data : [Datas]
}
struct Datas:Decodable {
    var time: Int
    var icon: String
    var humidity: Double
    var temperature: Double
}

struct Daily: Decodable {
    var summary: String
    var data: [DataDaily]
}
struct  DataDaily: Decodable {
    var time: Int
    var icon: String
    var temperatureMin: Double
    var temperatureMax: Double
}
