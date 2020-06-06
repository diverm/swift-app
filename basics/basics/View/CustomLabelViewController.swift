//
//  CustomLabelViewController.swift
//  basics
//
//  Created by Divya Verma on 07/06/20.
//  Copyright © 2020 Divya Verma. All rights reserved.
//

import UIKit

class CustomLabelViewController: UILabel {
    override func awakeFromNib() {
        layer.cornerRadius = 30
        layer.backgroundColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
    }
}
