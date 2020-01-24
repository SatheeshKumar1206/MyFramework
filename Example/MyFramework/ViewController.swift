//
//  ViewController.swift
//  MyFramework
//
//  Created by satheeshkumar1206 on 01/22/2020.
//  Copyright (c) 2020 satheeshkumar1206. All rights reserved.
//

import UIKit
import MyFramework

class ViewController: UIViewController {

    let blinkingLabel = AnimLabel(frame: CGRect(x: 10, y: 20, width: 200, height: 30))
    var isBlinking = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        blinkingLabel.text = "I blink!"
        blinkingLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
        
        // Create a UIButton to toggle the blinking
        let toggleButton = UIButton(frame: CGRect(x: 10, y: 60, width: 125, height: 30))
        toggleButton.setTitle("Toggle Blinking", for: .normal)
        toggleButton.setTitleColor(UIColor.red, for: .normal)
        toggleButton.addTarget(self, action:#selector(toggleBlinking), for: .touchUpInside)
        view.addSubview(toggleButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func toggleBlinking() {
        if (isBlinking) {
            blinkingLabel.stopBlinking()
        } else {
            blinkingLabel.startBlinking()
        }
        isBlinking = !isBlinking
    }

}

