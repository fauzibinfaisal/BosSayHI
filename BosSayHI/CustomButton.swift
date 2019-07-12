//
//  CustomButton.swift
//  BosSayHI
//
//  Created by Pramahadi Tama Putra on 12/07/19.
//  Copyright © 2019 Fauzi. All rights reserved.
//

import Foundation
import UIKit

class CustomButton: UIButton {
    
    override func awakeFromNib() {
        layer.cornerRadius = frame.height/2
        backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.4352941176, blue: 0.6352941176, alpha: 1)
        tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
}
