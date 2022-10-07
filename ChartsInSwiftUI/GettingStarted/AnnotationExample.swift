//
//  AnnotationExample.swift
//  ChartsInSwiftUI
//
//  Created by Ramill Ibragimov on 07.10.2022.
//

import SwiftUI
import Charts

struct AnnotationExample: View {
    
    let markColors: [Color] = [.pink, .orange, .indigo, .green, .yellow, .brown, .red]
    
    var body: some View {
        Chart(Workout.workouts) { workout in
            BarMark(x: .value("Day", workout.day), y: .value("Workiout(in minutes)", workout.minutes))
                .foregroundStyle(by: .value("Day", workout.day))
                .annotation(position: .top) {
                    Image(systemName: "figure.stand")
                        .foregroundStyle(.orange)
                }
        }
        .chartForegroundStyleScale(domain: Workout.workouts.compactMap({ workout in
            workout.day
        }), range: markColors)
        .frame(height: 400)
        .padding()
    }
}

struct AnnotationExample_Previews: PreviewProvider {
    static var previews: some View {
        AnnotationExample()
    }
}
