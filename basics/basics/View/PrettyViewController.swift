//
//  PrettyViewController.swift
//  basics
//
//  Created by Divya Verma on 07/06/20.
//  Copyright © 2020 Divya Verma. All rights reserved.
//

import UIKit

class PrettyViewController: UIView {
    override func awakeFromNib() {
        layer.cornerRadius = 10
        layer.cornerRadius = 20
        layer.shadowColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.75
        layer.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        layer.borderColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        layer.borderWidth = 5
    }
}
