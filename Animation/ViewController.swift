//
//  ViewController.swift
//  Animation
//
//  Created by Валерия Смецкая on 06.04.2022.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var springView: SpringView!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var runButton: UIButton!
    
    private var firstAnimation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeDescriptionLabel(firstAnimation)
        startAnimation(firstAnimation)
    }

    @IBAction func animationButtonPressed(_ sender: SpringButton) {
        let randomAnimation = Animation.getAnimation()
        
        if runButton.titleLabel?.text == "Run" {
            startAnimation(firstAnimation)
            changeDescriptionLabel(firstAnimation)
            sender.setTitle("Run \(randomAnimation.preset)", for: .normal)
            springView.animate()
        } else {
            startAnimation(randomAnimation)
            changeDescriptionLabel(randomAnimation)
            springView.animate()
            sender.setTitle("Run \(randomAnimation.preset)", for: .normal)
        }
    }
    
    private func changeDescriptionLabel(_ animation: Animation) {
        descriptionLabel.text = animation.description
    }
    
    private func startAnimation(_ animation: Animation) {
        springView.animation = animation.preset
        springView.curve = animation.curve
        springView.force = CGFloat(animation.force)
        springView.duration = CGFloat(animation.duration)
        springView.delay = CGFloat(animation.delay)
        springView.animate()
    }
}

