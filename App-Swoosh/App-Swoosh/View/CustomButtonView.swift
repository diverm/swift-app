//
//  CustomButtonView.swift
//  App-Swoosh
//
//  Created by Divya Verma on 07/06/20.
//  Copyright © 2020 Divya Verma. All rights reserved.
//

import UIKit

class CustomButtonView: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        layer.borderWidth = 2
    }

}
