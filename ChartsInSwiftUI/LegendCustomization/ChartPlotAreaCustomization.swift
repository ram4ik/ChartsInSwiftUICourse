//
//  ChartPlotAreaCustomization.swift
//  ChartsInSwiftUI
//
//  Created by Ramill Ibragimov on 13.10.2022.
//

import SwiftUI
import Charts

struct ChartPlotAreaCustomization: View {
    
    @State private var walkData = Workout.walkWorkouts
    
    var body: some View {
        Chart(walkData) { walk in
            BarMark(x: .value("Day", walk.day), y: .value("Mins", walk.minutes))
                .foregroundStyle(Color.orange)
            
        }
        .frame(height: 400)
        .chartPlotStyle(content: { content in
            content
                .background(Color.pink.gradient.opacity(0.2))
                .blendMode(.difference)
                .padding(30)
                .border(Color.orange, width: 2)
                .shadow(radius: 2)
        })
        .padding()
    }
}

struct ChartPlotAreaCustomization_Previews: PreviewProvider {
    static var previews: some View {
        ChartPlotAreaCustomization()
    }
}
