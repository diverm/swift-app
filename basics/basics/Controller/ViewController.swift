//
//  ViewController.swift
//  basics
//
//  Created by Divya Verma on 07/06/20.
//  Copyright © 2020 Divya Verma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
//        let product = AppleProduct(model: "iphone 11", color: "space Grey", price: 999.99)
        let product = SamsungProduct(model: "Saamsung Champ", color: "white", price: 299.99)

        modelLabel.text = product.model
        colorLabel.text = "in \(product.color)"
        priceLabel.text = "$\(product.price)"
    }


}

