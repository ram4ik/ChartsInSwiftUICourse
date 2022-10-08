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
                NavigationLink("Simple Vertical") { ChartsIntro() }
                NavigationLink("Simple Horizontal") { SimpleHorizontal() }
                NavigationLink("Dynamic Charts") { DynamicChartExample() }
                NavigationLink("Colored Dynamic Charts") { ColoredDynamicCharts() }
                NavigationLink("Chart Foreground Style") { ChartForegroundStyle() }
                NavigationLink("Annotation Example") { AnnotationExample() }
                NavigationLink("Stacked Bar Chart") { StackedBarChartInSwiftUI() }
                NavigationLink("Multi Series Bar Chart") { MultiSeriesBarChartInSwiftUI() }
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
