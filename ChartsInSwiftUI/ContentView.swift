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
