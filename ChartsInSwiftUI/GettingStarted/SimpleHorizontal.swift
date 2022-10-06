//
//  SimpleHorizontal.swift
//  ChartsInSwiftUI
//
//  Created by Ramill Ibragimov on 06.10.2022.
//

import SwiftUI
import Charts

struct SimpleHorizontal: View {
    var body: some View {
        Chart {
            BarMark(x: .value("Minutes", 20), y: .value("Day", "Mon"))
            BarMark(x: .value("Minutes", 12), y: .value("Day", "Tue"))
            BarMark(x: .value("Minutes", 28), y: .value("Day", "Wen"))
            BarMark(x: .value("Minutes", 9), y: .value("Day", "Thu"))
            BarMark(x: .value("Minutes", 43), y: .value("Day", "Fri"))
        }
        .padding()
        .frame(height: 400)
    }
}

struct SimpleHorizontal_Previews: PreviewProvider {
    static var previews: some View {
        SimpleHorizontal()
    }
}
