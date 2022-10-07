//
//  DynamicChartExample.swift
//  ChartsInSwiftUI
//
//  Created by Ramill Ibragimov on 07.10.2022.
//

import SwiftUI
import Charts

struct DynamicChartExample: View {
    var body: some View {
        Chart(Workout.workouts) { workout in
            BarMark(x: .value("Day", workout.day), y: .value("Workiout(in minutes)", workout.minutes))
            
        }
        .frame(height: 400)
        .padding()
        .navigationTitle("Dynamic Chart")
    }
}

struct DynamicChartExample_Previews: PreviewProvider {
    static var previews: some View {
        DynamicChartExample()
    }
}
