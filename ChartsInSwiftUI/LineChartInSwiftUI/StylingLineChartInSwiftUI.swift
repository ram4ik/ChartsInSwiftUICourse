//
//  StylingLineChartInSwiftUI.swift
//  ChartsInSwiftUI
//
//  Created by Ramill Ibragimov on 09.10.2022.
//

import SwiftUI
import Charts

struct StylingLineChartInSwiftUI: View {
    
    @State private var walkWorkouts = Workout.walkWorkouts
    
    var body: some View {
        Chart {
            ForEach(walkWorkouts) { workout in
                LineMark(x: .value("Day", workout.day), y: .value("Workout(minutes)", workout.minutes))
                    //.lineStyle(.init(lineWidth: 10, dash: [1, 5, 7]))
                    .lineStyle(.init(lineWidth: 10, lineCap: .round, lineJoin: .round))
            }
            //.foregroundStyle(Color.orange.gradient)
            .foregroundStyle(Gradient(colors: [.yellow, .orange, .pink]))
        }
        .frame(height: 400)
        .padding()
    }
}

struct StylingLineChartInSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        StylingLineChartInSwiftUI()
    }
}
