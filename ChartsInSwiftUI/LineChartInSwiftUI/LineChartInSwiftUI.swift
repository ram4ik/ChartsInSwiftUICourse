//
//  LineChartInSwiftUI.swift
//  ChartsInSwiftUI
//
//  Created by Ramill Ibragimov on 09.10.2022.
//

import SwiftUI
import Charts

struct LineChartInSwiftUI: View {
    
    @State private var walkWorkouts = Workout.walkWorkouts
    
    var body: some View {
        Chart {
            ForEach(walkWorkouts) { workout in
                LineMark(x: .value("Day", workout.day), y: .value("Workout(minutes)", workout.minutes))
            }
        }
        .frame(height: 400)
        .padding()
    }
}

struct LineChartInSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        LineChartInSwiftUI()
    }
}
