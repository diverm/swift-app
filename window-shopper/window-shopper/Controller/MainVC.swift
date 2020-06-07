//
//  ViewController.swift
//  window-shopper
//
//  Created by Divya Verma on 08/06/20.
//  Copyright © 2020 Divya Verma. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var priceTextField: CurrrencyTextField!
    @IBOutlet weak var wageTextField: CurrrencyTextField!
    @IBOutlet weak var hoursLbl: UILabel!
    @IBOutlet weak var resultLbl: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5750005841, blue: 0, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTextField.inputAccessoryView = calcBtn
        priceTextField.inputAccessoryView = calcBtn

        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }

    @IBAction func clearCalculatorTapped(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTextField.text = ""
        priceTextField.text = ""
    }

    @objc func calculate() {
        if let wageTxt = wageTextField.text, let priceTxt = priceTextField.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

}

