//
//  CurrrencyTextField.swift
//  window-shopper
//
//  Created by Divya Verma on 08/06/20.
//  Copyright © 2020 Divya Verma. All rights reserved.
//

import UIKit

@IBDesignable
class CurrrencyTextField: UITextField {

    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }

    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2478543134)
        layer.cornerRadius = 5.0
        textAlignment = .center

        if let p = placeholder {
            let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
