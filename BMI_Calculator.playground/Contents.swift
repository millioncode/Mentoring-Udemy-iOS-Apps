import UIKit

func bmiCalculator(weight: Double, height: Double) -> String {
    let bmi = weight / pow(height, 2)
    let shortBMI = String(format: "%.f", bmi)
    var interpretation = ""
    
    if bmi > 25 {
        interpretation = "You are overweight, check out some tips to getting healthy"
    }
    else if bmi > 18.5 {
        interpretation = "You are at normal weight, keep up the good work!"
    }
    else {
        interpretation = "You are underweight, bulk up!"
    }
    
    return "Your BMI is \(shortBMI) and \(interpretation)"
}

var calcBMI = bmiCalculator(weight: 63, height: 1.8)
