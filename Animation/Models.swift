//
//  Models.swift
//  Animation
//
//  Created by Валерия Смецкая on 06.04.2022.
//

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.2f", force))
        duration: \(String(format: "%.2f", duration))
        delay: \(String(format: "%.2f", delay))
        """
    }
    
    static func getAnimation() -> Animation {
        Animation(
            preset: DataManager.shared.presets.randomElement()?.rawValue ?? "",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "",
            force: Double.random(in: 0.2...1),
            duration: Double.random(in: 0.2...2),
            delay: Double.random(in: 0.2...1)
        )
    }
}
