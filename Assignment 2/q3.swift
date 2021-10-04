func MirroredRightTriangle(_ no : Int)
{
 for i in 1...no
 {
   print(String.init(repeating: " ", count: no-i) + String.init(repeating: "*", count: i))
 }
}
print("Enter no of rows:")
MirroredRightTriangle(Int (readLine()!) ?? 0)
