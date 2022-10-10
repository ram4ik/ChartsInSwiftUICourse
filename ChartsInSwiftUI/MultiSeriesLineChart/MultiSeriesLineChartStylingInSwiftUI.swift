//
//  MultiSeriesLineChartStylingInSwiftUI.swift
//  ChartsInSwiftUI
//
//  Created by Ramill Ibragimov on 10.10.2022.
//

import SwiftUI
import Charts

struct MultiSeriesLineChartStylingInSwiftUI: View {
    
    let workouts = [
        (workoutType: "Walk", data: Workout.walkWorkouts),
        (workoutType: "Run", data: Workout.runWorkouts),
    ]
    
    var body: some View {
        Chart {
            ForEach(workouts, id: \.workoutType) { series in
                ForEach(series.data) { element in
                    LineMark(x: .value("Day", element.day), y: .value("Mins", element.minutes))
                        .interpolationMethod(.cardinal)
                }
                .annotation(position: .leading) {
                    Text(series.workoutType == "Walk" ? "🚶‍♂️" : "🏃‍♂️")
                        .font(.largeTitle)
                }
                .foregroundStyle(by: .value("WorkoutType", series.workoutType))
                .symbol(by: .value("WorkoutType", series.workoutType))
            }
        }
        .frame(height: 400)
        .padding()
    }
}

struct MultiSeriesLineChartStylingInSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        MultiSeriesLineChartStylingInSwiftUI()
    }
}
