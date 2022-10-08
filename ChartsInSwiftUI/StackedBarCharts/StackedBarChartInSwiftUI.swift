//
//  StackedBarChartInSwiftUI.swift
//  ChartsInSwiftUI
//
//  Created by Ramill Ibragimov on 08.10.2022.
//

import SwiftUI
import Charts

struct StackedBarChartInSwiftUI: View {
    var body: some View {
        Chart(SomeDataModel.data) { data in
            BarMark(x: .value("Students", data.students), y: .value("Source", data.source.rawValue))
                .foregroundStyle(by: .value("Category", data.category.rawValue))
                .annotation(position: .overlay) {
                    Text(data.students.formatted())
                        .font(.caption2.bold())
                }
        }
        .frame(height: 300)
        .padding()
    }
}

struct StackedBarChartInSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        StackedBarChartInSwiftUI()
    }
}
 
