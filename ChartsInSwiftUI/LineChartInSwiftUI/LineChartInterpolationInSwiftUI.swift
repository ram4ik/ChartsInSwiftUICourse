//
//  LineChartInterpolationInSwiftUI.swift
//  ChartsInSwiftUI
//
//  Created by Ramill Ibragimov on 09.10.2022.
//

import SwiftUI
import Charts

struct LineChartInterpolationInSwiftUI: View {
    
    @State private var walkWorkouts = Workout.walkWorkouts
    
    var body: some View {
        Chart {
            ForEach(walkWorkouts) { workout in
                LineMark(x: .value("Day", workout.day), y: .value("Workout(minutes)", workout.minutes))
                    .lineStyle(.init(lineWidth: 10, lineCap: .round, lineJoin: .round))
            }
            .foregroundStyle(Gradient(colors: [.yellow, .orange, .pink]))
            .interpolationMethod(.cardinal)
        }
        .frame(height: 150)
        .padding(.horizontal)
        
        Chart {
            ForEach(walkWorkouts) { workout in
                LineMark(x: .value("Day", workout.day), y: .value("Workout(minutes)", workout.minutes))
                    .lineStyle(.init(lineWidth: 10, lineCap: .round, lineJoin: .round))
            }
            .foregroundStyle(Gradient(colors: [.yellow, .orange, .pink]))
            .interpolationMethod(.catmullRom)
        }
        .frame(height: 150)
        .padding(.horizontal)
        
        Chart {
            ForEach(walkWorkouts) { workout in
                LineMark(x: .value("Day", workout.day), y: .value("Workout(minutes)", workout.minutes))
                    .lineStyle(.init(lineWidth: 10, lineCap: .round, lineJoin: .round))
            }
            .foregroundStyle(Gradient(colors: [.yellow, .orange, .pink]))
            .interpolationMethod(.monotone)
        }
        .frame(height: 150)
        .padding(.horizontal)
        
        Chart {
            ForEach(walkWorkouts) { workout in
                LineMark(x: .value("Day", workout.day), y: .value("Workout(minutes)", workout.minutes))
                    .lineStyle(.init(lineWidth: 10, lineCap: .round, lineJoin: .round))
            }
            .foregroundStyle(Gradient(colors: [.yellow, .orange, .pink]))
            .interpolationMethod(.stepCenter)
        }
        .frame(height: 150)
        .padding(.horizontal)
    }
}

struct LineChartInterpolationInSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        LineChartInterpolationInSwiftUI()
    }
}
