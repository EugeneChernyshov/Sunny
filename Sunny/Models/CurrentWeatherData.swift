//
//  CurrentWeatherData.swift
//  Sunny
//
//  Created by Evgeniy Chernyshov on 25/09/2020.
//  Copyright © 2020 Evgeniy Chernyshov. All rights reserved.
//  Swift 5

import Foundation

struct CurrentWeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
    let feelsLike: Double
    
    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
    }
}

struct Weather: Codable {
    let id: Int
}
