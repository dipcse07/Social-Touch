//
//  MaterialTextField.swift
//  SOCIAL TOUCH
//
//  Created by MD.SAZID HASAN DIP on 6/25/16.
//  Copyright © 2016 MD.SAZID HASAN DIP. All rights reserved.
//

import UIKit

class MaterialTextField: UITextField {

 

    override func awakeFromNib() {
        layer.cornerRadius = 2.0
        layer.borderColor = UIColor(red:SHADOW_COLOR,green: SHADOW_COLOR, blue: SHADOW_COLOR,alpha: 0.1).CGColor
        layer.borderWidth = 1.0
        
    }
    
    
    //For Editable Place Holder
    override func textRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, 10, 0)
    }
    
    
    //For editable Text
    override func editingRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, 10, 0)
        
    }
    
}
