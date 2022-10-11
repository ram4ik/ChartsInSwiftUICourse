//
//  AreaChartInSwiftUI.swift
//  ChartsInSwiftUI
//
//  Created by Ramill Ibragimov on 11.10.2022.
//

import SwiftUI
import Charts

struct AreaChartInSwiftUI: View {
    
    @State private var runData = Workout.runWorkouts
    
    var body: some View {
        Chart(runData) {
            AreaMark(x: .value("Day", $0.day), y: .value("Minutes", $0.minutes))
        }
        .frame(height: 400)
        .padding()
    }
}

struct AreaChartInSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        AreaChartInSwiftUI()
    }
}
