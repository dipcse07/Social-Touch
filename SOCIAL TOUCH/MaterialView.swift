//
//  MaterialView.swift
//  SOCIAL TOUCH
//
//  Created by MD.SAZID HASAN DIP on 6/23/16.
//  Copyright © 2016 MD.SAZID HASAN DIP. All rights reserved.
//

import UIKit

class MaterialView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    
    
    override func awakeFromNib() {
        
      layer.cornerRadius = 2.0
        
        layer.shadowColor = UIColor( red: SHADOW_COLOR, green: SHADOW_COLOR,blue: SHADOW_COLOR, alpha: 0.5).CGColor
        
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        
        layer.shadowOffset = CGSizeMake(0.0, 2.0)
        
        
    }

}
