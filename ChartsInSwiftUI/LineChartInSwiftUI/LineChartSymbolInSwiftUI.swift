//
//  LineChartSymbolInSwiftUI.swift
//  ChartsInSwiftUI
//
//  Created by Ramill Ibragimov on 09.10.2022.
//

import SwiftUI
import Charts

struct LineChartSymbolInSwiftUI: View {
    
    @State private var walkWorkouts = Workout.walkWorkouts
    
    var body: some View {
        Chart {
            ForEach(walkWorkouts) { workout in
                LineMark(x: .value("Day", workout.day), y: .value("Workout(minutes)", workout.minutes))
                    .lineStyle(.init(lineWidth: 2, lineCap: .round, lineJoin: .round))
            }
            .foregroundStyle(Gradient(colors: [.yellow, .orange, .pink]))
            .annotation(position: .top) {
                Text("🚶‍♀️")
                    .font(.largeTitle)
            }
            .symbol(Circle())
        }
        .frame(height: 150)
        .padding(.horizontal)
    }
}

struct LineChartSymbolInSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        LineChartSymbolInSwiftUI()
    }
}
