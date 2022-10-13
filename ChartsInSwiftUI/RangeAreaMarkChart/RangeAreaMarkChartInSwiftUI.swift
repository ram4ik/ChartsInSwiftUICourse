//
//  RangeAreaMarkChartInSwiftUI.swift
//  ChartsInSwiftUI
//
//  Created by Ramill Ibragimov on 13.10.2022.
//

import SwiftUI
import Charts

struct RangeAreaMarkChartInSwiftUI: View {
    
    @State private var weatherData = Weather.exampleData
    
    var body: some View {
        Chart(weatherData) { weather in
            AreaMark(x: .value("Date", weather.date), yStart: .value("Min Temp", weather.minTemp), yEnd: .value("Max Temp", weather.maxTemp))
                .interpolationMethod(.catmullRom)
                .foregroundStyle(.orange.gradient.opacity(0.4))
            
            PointMark(x: .value("Date", weather.date), y: .value("Daily Avg", weather.average))
                .annotation {
                    Text("\(weather.average.formatted())℃")
                        .font(.caption2)
                }
        }
        .frame(height: 400)
        .padding()
    }
}

struct RangeAreaMarkChartInSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        RangeAreaMarkChartInSwiftUI()
    }
}
