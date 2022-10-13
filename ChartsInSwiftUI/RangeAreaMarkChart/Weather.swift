//
//  Weather.swift
//  ChartsInSwiftUI
//
//  Created by Ramill Ibragimov on 13.10.2022.
//

import Foundation

struct Weather: Identifiable {
    let id = UUID()
    let date: String
    let maxTemp: Double
    let minTemp: Double
    var average: Double {
        (minTemp + maxTemp) / 2
    }
}

extension Weather {
    static var exampleData: [Weather] = [
        .init(date: "Jan", maxTemp: 8, minTemp: 2),
        .init(date: "Feb", maxTemp: 9, minTemp: 3),
        .init(date: "Mar", maxTemp: 14, minTemp: 5),
        .init(date: "Apr", maxTemp: 15, minTemp: 6),
        .init(date: "Mai", maxTemp: 17, minTemp: 8),
        .init(date: "Jun", maxTemp: 24, minTemp: 13),
        .init(date: "Jul", maxTemp: 27, minTemp: 15),
        .init(date: "Aug", maxTemp: 28, minTemp: 16),
        .init(date: "Sep", maxTemp: 23, minTemp: 15),
        .init(date: "Oct", maxTemp: 18, minTemp: 9),
        .init(date: "Nov", maxTemp: 14, minTemp: 5),
        .init(date: "Dec", maxTemp: 9, minTemp: 3),
    ]
}
