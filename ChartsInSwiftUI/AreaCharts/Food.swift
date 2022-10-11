//
//  Food.swift
//  ChartsInSwiftUI
//
//  Created by Ramill Ibragimov on 11.10.2022.
//

import Foundation

struct Food: Identifiable {
    let id = UUID()
    let name: String
    let price: Double
    let date: Date
    
    init(name: String, price: Double, year: Int) {
        self.name = name
        self.price = price
        let calendar = Calendar.autoupdatingCurrent
        self.date = calendar.date(from: DateComponents(year: year))!
    }
}

extension Food {
    static var data = [
        Food(name: "Bananas", price: 0.15, year: 1980),
        Food(name: "Bananas", price: 0.15, year: 1990),
        Food(name: "Bananas", price: 0.25, year: 2000),
        Food(name: "Bananas", price: 0.25, year: 2010),
        Food(name: "Bananas", price: 0.35, year: 2020),
        Food(name: "Lemon", price: 0.45, year: 1980),
        Food(name: "Lemon", price: 0.45, year: 1990),
        Food(name: "Lemon", price: 0.55, year: 2000),
        Food(name: "Lemon", price: 0.55, year: 2010),
        Food(name: "Lemon", price: 0.60, year: 2020),
        Food(name: "Cherry", price: 1.15, year: 1980),
        Food(name: "Cherry", price: 1.45, year: 1990),
        Food(name: "Cherry", price: 1.55, year: 2000),
        Food(name: "Cherry", price: 1.65, year: 2010),
        Food(name: "Cherry", price: 1.75, year: 2020),
    ]
}
