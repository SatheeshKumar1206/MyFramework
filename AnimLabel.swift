//
//  AnimLabel.swift
//  MyFramework
//
//  Created by Satheesh Kumar on 22/01/20.
//

import UIKit

public class AnimLabel: UILabel {
    
    public func startBlinking() {
        let options : UIViewAnimationOptions = .repeat //| .autoreverse
        UIView.animate(withDuration: 0.25, delay:0.0, options:options, animations: {
            self.alpha = 0
        }, completion: nil)
    }
    
    public func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
    
}
