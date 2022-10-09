//
//  LineChartInterpolationInSwiftUI.swift
//  ChartsInSwiftUI
//
//  Created by Ramill Ibragimov on 09.10.2022.
//

import SwiftUI
import Charts

struct LineChartInterpolationInSwiftUI: View {
    
    @State private var walkWorkouts = Workout.walkWorkouts
    
    var body: some View {
        Chart {
            ForEach(walkWorkouts) { workout in
                LineMark(x: .value("Day", workout.day), y: .value("Workout(minutes)", workout.minutes))
                    .lineStyle(.init(lineWidth: 10, lineCap: .round, lineJoin: .round))
            }
            .foregroundStyle(Gradient(colors: [.yellow, .orange, .pink]))
            .interpolationMethod(.cardinal)
        }
        .frame(height: 400)
        .padding()
    }
}

struct LineChartInterpolationInSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        LineChartInterpolationInSwiftUI()
    }
}
