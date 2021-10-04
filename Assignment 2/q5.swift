func DownwardTriangle(_ no : Int)
{
 for i in 0...no-1
 {
   print(String.init(repeating: "*", count: no-i))
 }
}
print("Enter no of rows:")
DownwardTriangle(Int (readLine()!) ?? 0)
