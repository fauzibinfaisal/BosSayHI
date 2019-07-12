//
//  CustomTextField.swift
//  BosSayHI
//
//  Created by Pramahadi Tama Putra on 12/07/19.
//  Copyright © 2019 Fauzi. All rights reserved.
//

import Foundation
import UIKit

class CustomTextField: UITextField{
    override func awakeFromNib() {
        layer.cornerRadius = frame.height/2
        tintColor = UIColor.lightGray
        
    }
    
    
}

extension UITextField {
    func setIcon(_ image: UIImage) {
        let iconView = UIImageView(frame:
            CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame:
            CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}
