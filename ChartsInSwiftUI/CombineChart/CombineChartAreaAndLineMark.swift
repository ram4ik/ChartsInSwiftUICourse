//
//  CombineChartAreaAndLineMark.swift
//  ChartsInSwiftUI
//
//  Created by Ramill Ibragimov on 13.10.2022.
//

import SwiftUI
import Charts

struct CombineChartAreaAndLineMark: View {
    
    @State private var walkData = Workout.walkWorkouts
    
    var body: some View {
        Chart {
            ForEach(walkData) { walk in
                AreaMark(x: .value("Day", walk.day), y: .value("Mins", walk.minutes))
                    .interpolationMethod(.catmullRom)
                    .foregroundStyle(Gradient(colors: [.blue.opacity(0.3), .clear]))
                
                LineMark(x: .value("Day", walk.day), y: .value("Mins", walk.minutes))
                    .interpolationMethod(.catmullRom)
                    .foregroundStyle(Gradient(colors: [.blue]))
                
                PointMark(x: .value("Day", walk.day), y: .value("Mins", walk.minutes))
                    .annotation {
                        Text(walk.minutes.formatted())
                            .font(.caption2)
                    }
                            
            }
            
            RuleMark(y: .value("Target", 45))
                .lineStyle(StrokeStyle(dash: [2, 3]))
                .foregroundStyle(.orange.gradient)
                .annotation(position: .bottom) {
                    Text("Daily Target")
                        .font(.caption2)
                        .backgroundStyle(.white)
                }
        }
        .frame(height: 200)
        .padding()
    }
}

struct CombineChartAreaAndLineMark_Previews: PreviewProvider {
    static var previews: some View {
        CombineChartAreaAndLineMark()
    }
}
