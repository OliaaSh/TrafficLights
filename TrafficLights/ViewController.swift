//
//  ViewController.swift
//  TrafficLights
//
//  Created by Olga Shkredova on 15.07.22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var pushButton: UIButton!
    
   var lights = ""
    
    override func viewDidLoad() {
        
        lights = "All"
        
        redLightView.alpha = 1
        yellowLightView.alpha = 1
        greenLightView.alpha = 1
        
        super.viewDidLoad()
     
        redLightView.layer.cornerRadius = 20
        yellowLightView.layer.cornerRadius = 20
        greenLightView.layer.cornerRadius = 20
        pushButton.layer.cornerRadius = 10
        
    }
    
    @IBAction func pushButtonPressed() {
        if lights == "All" {
            redLightView.alpha = 1
            yellowLightView.alpha = 0.2
            greenLightView.alpha = 0.2
            
            lights = "Red"
            
        } else  if lights == "Red" {
            redLightView.alpha = 0.2
            yellowLightView.alpha = 1
            greenLightView.alpha = 0.2
            
            lights = "Yellow"
            
        } else if lights == "Yellow" {
            redLightView.alpha = 0.2
            yellowLightView.alpha = 0.2
            greenLightView.alpha = 1
            
            lights = "All"
        } 
}
}

    
   
    
    
    
    
  
