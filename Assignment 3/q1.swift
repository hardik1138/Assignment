var text = """
1) Number Right Triangle
1
1 2
1 2 3
1 2 3 4
1 2 3 4 5

2) Sequential Number Right Triangle
1
2 3
4 5 6
7 8 9 10
11 12 13 14 15

3) Pascal Triangle
    1
   1 1
  1 2 1
 1 3 3 1
1 4 6 4 1

Enter your choice:
"""
print(text)
var index = Int (readLine()!)
print("Enter the number of rows:")
var rows = Int (readLine()!)
switch index {
   case 1,2,3  :
      printPattern(row : rows!, ind : index!)
        break
   default :
      print( "Invalid input")
}
func printPattern( row : Int,ind : Int)
{
    var c=1
    for i in 0..<row{
        if(ind == 3)
        {
            for _ in 0..<row-i{
                print(" ",terminator:"")
            }
        }
        for j in 0..<i+1{
            if(ind == 1){
                print(j+1,terminator:" ")
            }else if(ind == 2){
                print(c,terminator:" ")
                c += 1
            }else
            {
                if(j == 0 || i == 0){
                    c = 1
                }
                else{
                    c = c * (i - j+1)/j
                }
                print("\(c)",terminator: " ")
            }
        }
        print("")
    }
}
