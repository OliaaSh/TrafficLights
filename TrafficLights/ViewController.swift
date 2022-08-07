//
//  ViewController.swift
//  TrafficLights
//
//  Created by Olga Shkredova on 15.07.22.
//

import UIKit

enum Light {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var pushButton: UIButton!
   
    private var currentLight = Light.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        redLightView.alpha = lightIsOff
        yellowLightView.alpha = lightIsOff
        greenLightView.alpha = lightIsOff
        
        pushButton.layer.cornerRadius = 10
      
        print (redLightView.frame.height)
    }
    
    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.bounds.height/2
        yellowLightView.layer.cornerRadius = yellowLightView.bounds.height/2
        greenLightView.layer.cornerRadius = greenLightView.bounds.height/2
        
        print(redLightView.frame.height)
    }
    
    @IBAction func pushButtonPressed() {
        if pushButton.currentTitle == "Push" {
            pushButton.setTitle("Next", for: .normal)
       }
        
        switch currentLight {
        case .red:
            greenLightView.alpha = lightIsOff
            redLightView.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLightView.alpha = lightIsOff
            yellowLightView.alpha = lightIsOn
            currentLight = .green
        case .green:
            greenLightView.alpha = lightIsOn
            yellowLightView.alpha = lightIsOff
            currentLight = .red
        }
    }
}
    
    
    
    
  
