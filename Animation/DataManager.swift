//
//  DataManager.swift
//  Animation
//
//  Created by Валерия Смецкая on 06.04.2022.
//

import Spring

class DataManager {
    static let shared = DataManager()
    
    let presets = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
}
