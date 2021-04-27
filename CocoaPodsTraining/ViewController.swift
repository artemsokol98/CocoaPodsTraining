//
//  ViewController.swift
//  CocoaPodsTraining
//
//  Created by Артем Соколовский on 27.04.2021.
//


import Spring

class ViewController: UIViewController {

    let animations = Animation.getAnimationData()
    
    var counter = 0
    
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    @IBOutlet weak var springAnimationView: SpringView!
    
    @IBOutlet weak var runSpringAnimationButton: SpringButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presetLabel.text = "Preset:"
        curveLabel.text = "Curve:"
        forceLabel.text = "Force:"
        durationLabel.text = "Duration:"
        delayLabel.text = "Delay:"
        runSpringAnimationButton.setTitle(animations[counter].preset, for: .normal)
    }

    override func viewWillLayoutSubviews() {
        springAnimationView.layer.cornerRadius = springAnimationView.frame.height / 10
        runSpringAnimationButton.layer.cornerRadius = runSpringAnimationButton.frame.height / 10
    }
    
    @IBAction func runSpringAnimationButton(_ sender: SpringButton) {
        
        let itemOfAnimation = animations[counter]
        
        springAnimationView.animation = itemOfAnimation.preset
        springAnimationView.curve = itemOfAnimation.curve
        springAnimationView.force = CGFloat(itemOfAnimation.force)
        springAnimationView.duration = CGFloat(itemOfAnimation.duration)
        springAnimationView.delay = CGFloat(itemOfAnimation.delay)
        springAnimationView.animate()
        
        presetLabel.text = "Preset: \(itemOfAnimation.preset)"
        curveLabel.text = "Curve: \(itemOfAnimation.curve)"
        forceLabel.text = "Force: \(string(from: itemOfAnimation.force))"
        durationLabel.text = "Duration: \(string(from: itemOfAnimation.duration))"
        delayLabel.text = "Delay: \(string(from: itemOfAnimation.delay))"
        
        counter += 1
        
        if counter == animations.count { counter = 0 }
        
        sender.setTitle(animations[counter].preset, for: .normal)
        
    }
    
    private func string(from: Double) -> String {
        String(format: "%.3f", from)
    }
    
    
}

