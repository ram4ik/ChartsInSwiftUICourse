//
//  RangeAreaChartWithBarkMark.swift
//  ChartsInSwiftUI
//
//  Created by Ramill Ibragimov on 13.10.2022.
//

import SwiftUI
import Charts

struct RangeAreaChartWithBarkMark: View {
    
    @State private var weatherData = Weather.exampleData
    
    var body: some View {
        Chart(weatherData) { weather in
            BarMark(x: .value("Date", weather.date), yStart: .value("Min Temp", weather.minTemp), yEnd: .value("Max Temp", weather.maxTemp))
                .foregroundStyle(.orange.gradient.opacity(0.4))
            
            RectangleMark(x: .value("Date", weather.date), y: .value("Daily Avg", weather.average))
                .foregroundStyle(.orange.gradient)
                .annotation {
                    Text("\(weather.average.formatted())℃")
                        .font(.caption2)
                }
            
            RuleMark(y: .value("Average", Weather.exampleData.map(\.average).reduce(0.0, +) / Double(Weather.exampleData.count)))
                .foregroundStyle(.pink.gradient)
                .lineStyle(StrokeStyle(lineWidth: 1, lineCap: .round, dash: [9]))
                
        }
        .frame(height: 400)
        .padding()
    }
}

struct RangeAreaChartWithBarkMarl_Previews: PreviewProvider {
    static var previews: some View {
        RangeAreaChartWithBarkMark()
    }
}
