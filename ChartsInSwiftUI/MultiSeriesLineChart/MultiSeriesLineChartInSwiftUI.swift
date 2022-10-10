//
//  MultiSeriesLineChartInSwiftUI.swift
//  ChartsInSwiftUI
//
//  Created by Ramill Ibragimov on 10.10.2022.
//

import SwiftUI
import Charts

struct MultiSeriesLineChartInSwiftUI: View {
    
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
                .foregroundStyle(by: .value("WorkoutType", series.workoutType))
            }
        }
        .frame(height: 400)
        .padding()
    }
}

struct MultiSeriesLineChartInSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        MultiSeriesLineChartInSwiftUI()
    }
}
