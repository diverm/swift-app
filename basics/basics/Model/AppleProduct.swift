//
//  AppleProduct.swift
//  basics
//
//  Created by Divya Verma on 07/06/20.
//  Copyright © 2020 Divya Verma. All rights reserved.
//

import Foundation

class AppleProduct {
    public private(set) var model:String
    public private(set) var color: String
    public private(set) var price:Double

    init(model:String, color:String, price:Double) {
        self.model = model
        self.price = price
        self.color = color
    }
}
