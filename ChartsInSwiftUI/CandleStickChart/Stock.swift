//
//  Stock.swift
//  ChartsInSwiftUI
//
//  Created by Ramill Ibragimov on 12.10.2022.
//

import Foundation

struct Stock: Identifiable {
    var id = UUID()
    var name: String
    var date: String
    var openPrice: Double
    var highPrice: Double
    var lowPrice: Double
    var closePrice: Double
}

extension Stock {
    static var exampleData: [Stock] {
        
        [
            .init(name: "One", date: "Oct 11", openPrice: 103.34, highPrice: 234.34, lowPrice: 111.81, closePrice: 142.22),
            .init(name: "Two", date: "Oct 12", openPrice: 23.34, highPrice: 34.34, lowPrice: 11.81, closePrice: 72.22),
            .init(name: "Three", date: "Oct 13", openPrice: 223.34, highPrice: 234.34, lowPrice: 211.81, closePrice: 222.22),
            .init(name: "Four", date: "Oct 14", openPrice: 103.34, highPrice: 204.34, lowPrice: 101.81, closePrice: 132.22),
            .init(name: "Five", date: "Oct 15", openPrice: 423.34, highPrice: 434.34, lowPrice: 411.81, closePrice: 422.22),
            .init(name: "Six", date: "Oct 16", openPrice: 503.34, highPrice: 534.34, lowPrice: 511.81, closePrice: 522.22),
            .init(name: "Seven", date: "Oct 17", openPrice: 123.34, highPrice: 334.34, lowPrice: 111.81, closePrice: 322.22),
            .init(name: "Eight", date: "Oct 18", openPrice: 23.34, highPrice: 134.34, lowPrice: 111.81, closePrice: 122.22),
        
        ]
    }
}
