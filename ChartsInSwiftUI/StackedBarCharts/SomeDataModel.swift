//
//  SomeDataModel.swift
//  ChartsInSwiftUI
//
//  Created by Ramill Ibragimov on 08.10.2022.
//

import Foundation

struct SomeDataModel: Identifiable {
    let id = UUID()
    let students: Double
    let category: SomeData
    let source: SomeDataSource
}

extension SomeDataModel {
    static let data: [SomeDataModel] = [
        .init(students: 9453, category: ._swiftUI, source: ._medium),
        .init(students: 2433, category: .machineLearning, source: .youTube),
        .init(students: 947, category: ._swiftUI, source: ._medium),
        .init(students: 6454, category: .uIKit, source: .udemy),
        .init(students: 1411, category: ._swiftUI, source: .youTube),
        .init(students: 2453, category: .machineLearning, source: .youTube),
        .init(students: 3489, category: ._swiftUI, source: .youTube),
        .init(students: 6477, category: .machineLearning, source: .youTube),
        .init(students: 4463, category: .uIKit, source: ._medium),
    ]
}
