//
//  Workout.swift
//  ChartsInSwiftUI
//
//  Created by Ramill Ibragimov on 07.10.2022.
//

import Foundation

struct Workout: Identifiable {
    let id = UUID()
    var day: String
    var minutes: Double
}

extension Workout {
    static let workouts: [Workout] = [
        .init(day: "Mon", minutes: 20),
        .init(day: "Tue", minutes: 44),
        .init(day: "Wen", minutes: 12),
        .init(day: "Thu", minutes: 37),
        .init(day: "Fri", minutes: 30),
        .init(day: "Sat", minutes: 19),
        .init(day: "Sun", minutes: 28),
    ]
    
    static let walkWorkouts: [Workout] = [
        .init(day: "Mon", minutes: 70),
        .init(day: "Tue", minutes: 94),
        .init(day: "Wen", minutes: 62),
        .init(day: "Thu", minutes: 87),
        .init(day: "Fri", minutes: 60),
        .init(day: "Sat", minutes: 79),
        .init(day: "Sun", minutes: 68),
    ]
    
    static let runWorkouts: [Workout] = [
        .init(day: "Mon", minutes: 71),
        .init(day: "Tue", minutes: 53),
        .init(day: "Wen", minutes: 69),
        .init(day: "Thu", minutes: 74),
        .init(day: "Fri", minutes: 44),
        .init(day: "Sat", minutes: 94),
        .init(day: "Sun", minutes: 86),
    ]
}
