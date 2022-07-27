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
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //redLightView.layer.cornerRadius = redLightView.bounds.height/2
        //redLightView.clipsToBounds = true
        
        redLightView.layer.cornerRadius = 20
        yellowLightView.layer.cornerRadius = 20
        greenLightView.layer.cornerRadius = 20
        
        pushButton.layer.cornerRadius = 10
        
    }
    @IBAction func pushButtonPressed() {
        
    }
    
}

