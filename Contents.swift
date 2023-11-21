import UIKit

//First Example

// We below write an extension for Double struct
extension Double{
    func round(to places: Int) -> Double{
        let precisionNumber = pow(10, Double(places))
        var n = self
        n = n * precisionNumber         // myDouble = myDouble * 1000
        n.round()                       // myDouble.round()
        n = n / precisionNumber         // myDouble = myDouble / 1000
        return n
    }
}

let myDouble = 3.14159
//let myRoundedDouble = String(format: "%.1f", myDouble)

myDouble.round(to:3)





// Second Example

extension UIButton{
    func makeCircular() {
        button.layer.cornerRadius = 25    // We can use self instead of button
        self.clipsToBounds = true
    }
}

let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
button.backgroundColor = .red

//// We make a circular button first. But because we don't want to make a new circular button every single   time, we use extension above for that reason
//button.layer.cornerRadius = 25
//button.clipsToBounds = true

button.makeCircular()

