//
//  TextField.swift
//  UBER clone App
//
//  Created by Roman on 31.07.2022.
//

import UIKit

extension UITextField {
    func textField(withPlaceholder placeholder: String, isSecureTextEntry: Bool) -> UITextField {
       
            let tf = UITextField()
            tf.borderStyle = .none
            tf.font = UIFont.systemFont(ofSize: 16)
            tf.keyboardAppearance = .dark
            tf.isSecureTextEntry = isSecureTextEntry
            tf.textColor = .white
            tf.attributedPlaceholder = NSAttributedString(string: placeholder, attributes:
                                                            [NSAttributedString.Key.foregroundColor :
                                                            UIColor.lightGray])
            return tf
       
    }
}
