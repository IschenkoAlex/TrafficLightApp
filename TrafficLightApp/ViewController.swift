//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Air on 29.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redColorView: UIView!
    @IBOutlet weak var yellowColorView: UIView!
    @IBOutlet weak var greenColorView: UIView!
    @IBOutlet weak var startButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        redColorView.layer.cornerRadius = 40
        redColorView.alpha = 0.3
        
        yellowColorView.layer.cornerRadius = 40
        yellowColorView.alpha = 0.3
        
        greenColorView.layer.cornerRadius = 40
        greenColorView.alpha = 0.3
        
    }

    @IBAction func changeAlphaButton() {
        startButton.setTitle("NEXT", for: .normal)
        
        if redColorView.alpha < 1 {
            redColorView.alpha += 0.7
            yellowColorView.alpha = 0.3
            greenColorView.alpha = 0.3
        } else if yellowColorView.alpha < 1 {
            yellowColorView.alpha += 0.8
            redColorView.alpha = 1
            greenColorView.alpha = 0.3
        } else if greenColorView.alpha < 1 {
            greenColorView.alpha += 0.8
            redColorView.alpha = 0.3
            yellowColorView.alpha = 0.3
                    }
        
    }
    
}

