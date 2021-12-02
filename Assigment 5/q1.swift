//custom Error
enum BikeError:Error{
  case inSufficientAgeToRideBike(neededAge:Int)
}
func rideBike(age:Int) throws -> String{
  if age < 18{
    throw BikeError.inSufficientAgeToRideBike(neededAge:18)
  }
  return "You can ride bike!"
}

do{
  try print(rideBike(age:17))
}catch BikeError.inSufficientAgeToRideBike( let neededAge){
  print("Error occured because of inSufficient age, the needed age is \(neededAge)")
}

//Variadic Parameters
func findMaxLength(_ str:String...) -> String{
  var max = 0
  var maxword = ""
  for s in str{
    if(s.count > max)
    {
      max=s.count
      maxword = s
    }
  }
  return maxword
}
print("Max Length Word: " + findMaxLength("India","Afghanistan","Japan","Kazakhstan","Italy"))

//In-Out Parameters
func calGrossSalary(_ salary:inout Double)
{
  let da = (10 * salary) / 100
  let hra = (12 * salary) / 100
  salary = salary + da + hra
}
var salary = 10000.00
print("Basic salary: \(salary)")
calGrossSalary(&salary)
print("Gross salary: \(salary)")
