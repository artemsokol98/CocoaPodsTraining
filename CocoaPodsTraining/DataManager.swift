//
//  DataManager.swift
//  CocoaPodsTraining
//
//  Created by Артем Соколовский on 27.04.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let namesOfPresets = [
        "shake",
        "pop",
        "morph",
        "squeeze",
        "wobble",
        "swing",
        "flipX",
        "flipY",
        "fall",
        "squeezeLeft",
        "squeezeRight",
        "squeezeDown",
        "squeezeUp",
        "slideLeft",
        "slideRight",
        "slideDown",
        "slideUp",
        "fadeIn",
        "fadeOut",
        "fadeInLeft",
        "fadeInRight",
        "fadeInDown",
        "fadeInUp",
        "zoomIn",
        "zoomOut",
        "flash"
    ]
    
    let namesOfCurves = [
        "spring",
        "linear",
        "easeIn",
        "easeOut",
        "easeInOut"
    ]
    
    let minValueOfProperty = 0.5
    let maxValueOfProperty = 1.5
    
    private init() {}
}
