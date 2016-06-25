//
//  MaterialButton.swift
//  SOCIAL TOUCH
//
//  Created by MD.SAZID HASAN DIP on 6/24/16.
//  Copyright © 2016 MD.SAZID HASAN DIP. All rights reserved.
//
import Foundation
import UIKit

class MaterialButton: UIButton {

    override func awakeFromNib() {
        
        layer.cornerRadius = 2.0
        
        layer.shadowColor = UIColor( red: SHADOW_COLOR, green: SHADOW_COLOR,blue: SHADOW_COLOR, alpha: 0.5).CGColor
        
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        
        layer.shadowOffset = CGSizeMake(0.0, 2.0)
        
        
    }
}
