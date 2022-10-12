//
//  CandleStickChartUsingRectangleMark.swift
//  ChartsInSwiftUI
//
//  Created by Ramill Ibragimov on 12.10.2022.
//

import SwiftUI
import Charts

struct CandleStickChartUsingRectangleMark: View {
    var body: some View {
        Chart {
            ForEach(Stock.exampleData) { stock in
                RectangleMark(
                    x: .value("Date", stock.date),
                    yStart: .value("Low", stock.lowPrice),
                    yEnd: .value("High", stock.highPrice),
                    width: 3)
                
                RectangleMark(
                    x: .value("Date", stock.date),
                    yStart: .value("Open", stock.openPrice),
                    yEnd: .value("Close", stock.closePrice),
                    width: 10)
                .foregroundStyle(Color.orange.gradient)
            }
        }
        .frame(height: 400)
        .padding()
    }
}

struct CandleStickChartUsingRectangleMark_Previews: PreviewProvider {
    static var previews: some View {
        CandleStickChartUsingRectangleMark()
    }
}
