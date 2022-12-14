//
//  ContentView.swift
//  ChartsInSwiftUI
//
//  Created by Ramill Ibragimov on 06.10.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Group {
                    NavigationLink("Simple Vertical") { ChartsIntro() }
                    NavigationLink("Simple Horizontal") { SimpleHorizontal() }
                    NavigationLink("Dynamic Charts") { DynamicChartExample() }
                    NavigationLink("Colored Dynamic Charts") { ColoredDynamicCharts() }
                    NavigationLink("Chart Foreground Style") { ChartForegroundStyle() }
                    NavigationLink("Annotation Example") { AnnotationExample() }
                    NavigationLink("Stacked Bar Chart") { StackedBarChartInSwiftUI() }
                    NavigationLink("Multi Series Bar Chart") { MultiSeriesBarChartInSwiftUI() }
                    NavigationLink("Line Chart") { LineChartInSwiftUI() }
                    NavigationLink("Styling Line Chart") { StylingLineChartInSwiftUI() }
                }
                Group {
                    NavigationLink("Line Chart Interpolation") { LineChartInterpolationInSwiftUI() }
                    NavigationLink("Line Chart Annotation") { LineChartAnnotationInSwiftUI() }
                    NavigationLink("Line Chart Symbol") { LineChartSymbolInSwiftUI() }
                    NavigationLink("Multi Series Line Chart") { MultiSeriesLineChartInSwiftUI() }
                    NavigationLink("Multi Series Line Chart Styling") { MultiSeriesLineChartStylingInSwiftUI() }
                    NavigationLink("Area Chart") { AreaChartInSwiftUI() }
                    NavigationLink("Area Chart Styling") { AreaChartStylingInSwiftUI() }
                    NavigationLink("Multi Series Area Chart") { MultiSeriesAreaChartInSwiftUI() }
                    NavigationLink("Candle Stick Chart") { CandleStickChartUsingRectangleMark() }
                    NavigationLink("Combine Chart") { CombineChartAreaAndLineMark() }
                }
                Group {
                    NavigationLink("Range Area Mark Chart") { RangeAreaMarkChartInSwiftUI() }
                    NavigationLink("Range Area with BarMark Chart") { RangeAreaChartWithBarkMark() }
                    NavigationLink("Legend Customization") { LegendCustomizationInSwiftUI() }
                    NavigationLink("Chart Plot Customization") { ChartPlotAreaCustomization() }
                }
            }
            .navigationTitle("SwiftUI Charts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
