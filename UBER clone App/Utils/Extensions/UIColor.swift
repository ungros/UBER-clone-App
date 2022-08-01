//
//  UIColor.swift
//  UBER clone App
//
//  Created by Roman on 01.08.2022.
//

import UIKit

extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor.init(red: red/255, green: green/255, blue: blue/255, alpha: 1.0)
    }
    
    static let backgroundColor = rgb(red: 25, green: 25, blue: 25)
    static let mainBlueTint = rgb(red: 17, green: 154, blue: 237)
}
