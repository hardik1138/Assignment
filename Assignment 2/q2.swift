func RightTriangle(_ no : Int)
{
 for i in 1...no
 {
   print(String.init(repeating: "*", count: i))
 }
}
print("Enter no of rows:")
RightTriangle(Int (readLine()!))
