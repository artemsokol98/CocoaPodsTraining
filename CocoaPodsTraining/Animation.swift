//
//  Animation.swift
//  CocoaPodsTraining
//
//  Created by Артем Соколовский on 27.04.2021.
//

import Foundation

struct Animation {
    var preset: String
    var curve: String
    var force: Double
    var duration: Double
    var delay: Double
}

extension Animation {
    static func getAnimationData() -> [Animation] {
        var animations: [Animation] = []
        
        let presets = DataManager.shared.namesOfPresets
        let curves = DataManager.shared.namesOfCurves
        let minValue = DataManager.shared.minValueOfProperty
        let maxValue = DataManager.shared.maxValueOfProperty
        
        for index in 0..<presets.count {
            let animation = Animation(
                preset: presets[index],
                curve: curves.randomElement() ?? "",
                force: Double.random(in: minValue...maxValue),
                duration: Double.random(in: minValue...maxValue),
                delay: Double.random(in: minValue...maxValue)
            )
            
            animations.append(animation)
        }
        
        return animations
    }
}
