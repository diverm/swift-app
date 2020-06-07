import UIKit

class Humanoid {
    func species() {
        print("Humanoid")
    }
}
class Orc: Humanoid {
    func species() {
        print("Orc")
    }
}
class Elf: Humanoid {
    func species() {
        print("Elf")
    }
}
class Urukhai: Orc, Elf {
    func species() {
        print("Uruk-hai")
    }
}
let urukhai = Urukhai()
urukhai.species()

class Vehicle {
    func info() {
        print("Vehicle")
    }
}

class Truck: Vehicle {
    override func info() {
        print("Truck")
    }
}

let aTruck = Truck()
if let aVehicle = aTruck as? Vehicle {
    aVehicle.info()
}

class Person {
    func speak() {
        print("Hello")
    }
}

class Frenchman: Person {
    override func speak() {
        print("Bonjour")
    }
}

let jaque = Frenchman()
jaque.speak()

class Shape {
    var area: Double?
    var perimeter: Double?
    
    func calculateArea() {
    }
    
    func calculatePerimeter() {
    }
}

class Triangle: Shape {
    public private(set) var height: Double
    public private(set) var base: Double

    init(height:Double, base:Double) {
        self.height = height
        self.base = base
    }

    override func calculateArea() {
        area = (height * base)/2
    }
    
    override func calculatePerimeter() {
        perimeter = height + base + sqrt(pow(base, 2) + pow(height, 2))
    }
}

class Square: Shape {
    public private(set) var side:Double
    
    init(side:Double) {
        self.side = side
    }

    override func calculateArea() {
        area = (side * side)
    }
    
    override func calculatePerimeter() {
        perimeter = side * 4
    }
}

class Circle: Shape {
    public private(set) var radius:Double
    
    init(radius:Double) {
        self.radius = radius
    }
    override func calculateArea() {
        area = pow(radius, 2) * 3.14
    }
    
    override func calculatePerimeter() {
        perimeter = 2 * radius * 3.14
    }
}

let square = Square(side: 1)
let circle = Circle(radius: 1)
let tr = Triangle(height: 3, base: 4)

//square.calculateArea()
//square.calculatePerimeter()
print("Area = \(square.area!), Perimeter= \(square.perimeter!)")

circle.calculateArea()
circle.calculatePerimeter()
print("Area = \(circle.area!), Perimeter= \(circle.perimeter!)")

tr.calculateArea()
tr.calculatePerimeter()
print("Area = \(tr.area!), Perimeter= \(tr.perimeter!)")

