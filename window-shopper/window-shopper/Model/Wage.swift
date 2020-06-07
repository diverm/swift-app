//
//  Wage.swift
//  window-shopper
//
//  Created by Divya Verma on 08/06/20.
//  Copyright © 2020 Divya Verma. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price:Double) -> Int {
        return Int(ceil(price / wage))
    }
}
