//
//  MultiSeriesBarChartInSwiftUI.swift
//  ChartsInSwiftUI
//
//  Created by Ramill Ibragimov on 08.10.2022.
//

import SwiftUI
import Charts

struct MultiSeriesBarChartInSwiftUI: View {
    
    let workoutData = [
        (workoutType: "Walk", data: Workout.walkWorkouts),
        (workoutType: "Run", data: Workout.runWorkouts)
    ]
    
    var body: some View {
        Chart {
            ForEach(workoutData, id: \.workoutType) { element in
                ForEach(element.data) {workout in
                    BarMark(x: .value("Day", workout.day), y: .value("Workout(minutes)", workout.minutes))
                }
                .foregroundStyle(by: .value("Workout type", element.workoutType))
                .position(by: .value("Workout type", element.workoutType))
            }
        }
        .frame(height: 400)
        .padding()
    }
}

struct MultiSeriesBarChartInSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        MultiSeriesBarChartInSwiftUI()
    }
}
