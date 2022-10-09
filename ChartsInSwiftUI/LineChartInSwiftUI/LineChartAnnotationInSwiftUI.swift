//
//  LineChartAnnotationInSwiftUI.swift
//  ChartsInSwiftUI
//
//  Created by Ramill Ibragimov on 09.10.2022.
//

import SwiftUI
import Charts

struct LineChartAnnotationInSwiftUI: View {
    
    @State private var walkWorkouts = Workout.walkWorkouts
    
    var body: some View {
        Chart {
            ForEach(walkWorkouts) { workout in
                LineMark(x: .value("Day", workout.day), y: .value("Workout(minutes)", workout.minutes))
                    .lineStyle(.init(lineWidth: 10, lineCap: .round, lineJoin: .round))
            }
            .foregroundStyle(Gradient(colors: [.yellow, .orange, .pink]))
            .annotation(position: .top) {
                Text("🚶‍♀️")
                    .font(.largeTitle)
            }
        }
        .frame(height: 150)
        .padding(.horizontal)
    }
}

struct LineChartAnnotationInSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        LineChartAnnotationInSwiftUI()
    }
}
