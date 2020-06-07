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

    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2 - size/2), width: size, height: size))
        currencyLabel.backgroundColor = #colorLiteral(red: 0.5551366806, green: 0.5552331805, blue: 0.5551239848, alpha: 0.7092319542)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true

        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
    }

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
        
        clipsToBounds = true

        if let p = placeholder {
            let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
