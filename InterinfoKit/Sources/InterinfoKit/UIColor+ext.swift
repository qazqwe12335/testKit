//
//  File.swift
//  
//
//  Created by 開發人員張軒瑋 on 2023/11/21.
//

import Foundation
import UIKit

extension UIColor {
    convenience init(hex: Int) {
        self.init(red: CGFloat((hex & 0xFF0000) >> 16) / 255.0,
                  green: CGFloat((hex & 0x00FF00) >> 8) / 255.0,
                  blue: CGFloat(hex & 0x0000FF) / 255.0,
                  alpha: 1.0)
    }
}
