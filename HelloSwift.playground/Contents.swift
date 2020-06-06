import UIKit

var len:Int = 7;
var brd: Float = 9.7;
var mul = Float(len) + brd; //cannot perform operation on different data types.


var message = "Hello, world"
print(message)

var name = "Divya" //implicit declaration
var lname: String = "Verma"
var age = 26
var weight = 65.5
var isDonor = false

print(name + " " + lname) //string concatenation
var new_message: String = "Hi, my name is \(name) \(lname). I am \(age) years old." //string interpolation
print(new_message)
print(weight)

new_message.append(" I am \(weight) kg.")
print(new_message)
weight = 100

print(weight)

print(age)

let color = "\(age)" + "red" //constant : let




