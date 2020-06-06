import UIKit

func display(flag: Bool, mesage: String){
    if flag{
        print(mesage)
    }
}

var someBool: Bool = true
display(flag: someBool, mesage: "Worrked")
display(flag: someBool, mesage: "This works too")

//inout for pass by reference
var bankAccountBalance = 500.00
var sigourneyWeaverAlientStomperShoes = 350.00

func purchaseItem(currentBalance: inout Double, itemPrice: Double){
    if itemPrice <= currentBalance {
        currentBalance = currentBalance - itemPrice
        print("Purchased item for: $\(itemPrice)")
    } else {
        print("You are broke. You should learn how to save money.")
    }
}

purchaseItem(currentBalance: &bankAccountBalance, itemPrice: sigourneyWeaverAlientStomperShoes)

// nil-coalescing operator (a ?? b) unwraps an optional a if it contains a value,
// or returns a default value b if a is nil

let defaultColorName = "red"
var userDefinedColorName: String?   // defaults to nil

var colorNameToUse = userDefinedColorName ?? defaultColorName

//userDefinedColorName?.func() : check if not nil then call the function: Optional chaining
userDefinedColorName! //force unwrap an optional

