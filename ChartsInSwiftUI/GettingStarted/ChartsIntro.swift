//
//  ChartsIntro.swift
//  ChartsInSwiftUI
//
//  Created by Ramill Ibragimov on 06.10.2022.
//

import SwiftUI
import Charts

struct ChartsIntro: View {
    var body: some View {
        Chart {
            BarMark(x: .value("Day", "Mon"), y: .value("Minutes", 20))
            BarMark(x: .value("Day", "Tue"), y: .value("Minutes", 12))
            BarMark(x: .value("Day", "Wen"), y: .value("Minutes", 28))
            BarMark(x: .value("Day", "Thu"), y: .value("Minutes", 9))
            BarMark(x: .value("Day", "Fri"), y: .value("Minutes", 43))
        }
        .padding()
        .frame(height: 400)
    }
}

struct ChartsIntro_Previews: PreviewProvider {
    static var previews: some View {
        ChartsIntro()
    }
}
