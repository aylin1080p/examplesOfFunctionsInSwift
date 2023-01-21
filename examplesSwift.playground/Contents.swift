import UIKit

// 1- Write a function that converts and returns the degrees entered as a parameter to degrees Fahrenheit. F = C x 1.8 + 32

func fahr(howManyDegrees:Double)->Double{
    
    var resultFahrenheit = howManyDegrees * 1.8 + 32
    
    return resultFahrenheit
}
var turnThis = fahr(howManyDegrees: 1)
print(turnThis)

// 2- Write a method that calculates the perimeter of a rectangle whose side dimensions are given as parameters

func calculatePerimeter (with:Double, height:Double) -> Double{
    
    var perimeter = with*2 + height*2
    
    return perimeter
}

var result2 = calculatePerimeter(with: 10, height: 10.2)
print(result2)


// 3- Write the function that calculates the factorial of the given number

func fact (value:Int) -> Int {
   var rresult = 1
    for i in 1...value{
        rresult = rresult*i
         }
    return rresult
}
print(fact(value: 4))



// 4- Write a function that takes word and letter parameters and reports how many times the given letter occurs in the given word

func findTheLetter(word:String,letter:Character)-> Int{
    
    var resultHowManyTimes = 0

    
    for l2 in word {
        if (l2 == letter){
            resultHowManyTimes = resultHowManyTimes + 1
        }
        
    }
    return resultHowManyTimes
    
    
}

var resulttt = findTheLetter(word: "Aylin Güneş", letter: "ü")
print(resulttt)


// 5-Write a function that calculates the sum of interior angles based on the number of sides. (S-2)*180

func sumOfInteriorAngles(numberOfEdges:Int)->Int{
    
    var resultSumOfAngles = (numberOfEdges-2) * 180
    
    return resultSumOfAngles
}

var pentagon = sumOfInteriorAngles(numberOfEdges: 5)
print(pentagon)


// 6- Write a function that determines salary by working day

func salaryCalculator(workDays:Int, extraShiftHours:Double?) -> Double {
   
    var normalSalary = workDays * 80
    var extraSalary = extraShiftHours! * 20.0
    var totalSalary = Double(normalSalary) + extraSalary
    
    return totalSalary
    
}

salaryCalculator(workDays: 20, extraShiftHours: 2)


// 7- Write the function that determines the price according to the amount of internet package given and the amount of excess



func dataUsed(packageQuotagb:Double,packagePrice:Double, dataUsedmb:Double)->Double{
    var bill:Double = 0.0
    
    var gbPrice:Double = packagePrice / packageQuotagb
    var mbPrice:Double = gbPrice/1024
    var extraUsedPrice:Double = 0.0
    var extraUsedmb:Double = 0.0
    
    
    
    if (dataUsedmb > packageQuotagb/1024){
         
        extraUsedmb = packageQuotagb/1024 - dataUsedmb
        extraUsedPrice = extraUsedmb * 15
    }
    
    
   
    bill = packagePrice + extraUsedPrice
    
    
    return bill
}

print(dataUsed(packageQuotagb: 10.0, packagePrice: 100, dataUsedmb: 11565)
)
