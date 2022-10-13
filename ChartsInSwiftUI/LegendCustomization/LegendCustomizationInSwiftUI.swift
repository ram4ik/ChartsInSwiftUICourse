//
//  LegendCustomizationInSwiftUI.swift
//  ChartsInSwiftUI
//
//  Created by Ramill Ibragimov on 13.10.2022.
//

import SwiftUI
import Charts

struct LegendCustomizationInSwiftUI: View {
    
    let workouts = [
        (workoutType: "Walk", data: Workout.walkWorkouts),
        (workoutType: "Run", data: Workout.runWorkouts),
    ]
    
    var body: some View {
        Chart {
            ForEach(workouts, id: \.workoutType) { series in
                ForEach(series.data) { element in
                    LineMark(x: .value("Day", element.day), y: .value("Mins", element.minutes))
                        .interpolationMethod(.catmullRom)
                }
                .foregroundStyle(by: .value("Workout Type", series.workoutType))
                .symbol(by: .value("Workout Type", series.workoutType))
            }
        }
        .frame(height: 400)
        //.chartLegend(.hidden)
        .chartLegend(position: .trailing, alignment: .center)
        .padding()
    }
}

struct LegendCustomizationInSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        LegendCustomizationInSwiftUI()
    }
}
