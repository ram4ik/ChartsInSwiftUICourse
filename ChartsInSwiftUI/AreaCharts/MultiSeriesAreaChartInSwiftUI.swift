//
//  MultiSeriesAreaChartInSwiftUI.swift
//  ChartsInSwiftUI
//
//  Created by Ramill Ibragimov on 11.10.2022.
//

import SwiftUI
import Charts

struct MultiSeriesAreaChartInSwiftUI: View {
    var body: some View {
        Chart(Food.data) {
            AreaMark(x: .value("Date", $0.date), y: .value("Price", $0.price))
                .foregroundStyle(by: .value("Food Item", $0.name))
        }
        .frame(height: 200)
        .padding()
        
        Chart(Food.data) {
            AreaMark(x: .value("Date", $0.date), y: .value("Price", $0.price))
                .foregroundStyle(by: .value("Food Item", $0.name))
                .interpolationMethod(.stepCenter)
        }
        .frame(height: 200)
        .padding()
        
        Chart(Food.data) {
            AreaMark(x: .value("Date", $0.date), y: .value("Price", $0.price))
                .foregroundStyle(by: .value("Food Item", $0.name))
                .interpolationMethod(.catmullRom)
        }
        .frame(height: 200)
        .padding()
    }
}

struct MultiSeriesAreaChartInSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        MultiSeriesAreaChartInSwiftUI()
    }
}
