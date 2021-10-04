print("Enter no of rows:")
var n = Int (readLine()!)
n=n+1
for i in 1..<n{
    for j in 1..<n{
        if(j < n-i)
        {
            print(" ", terminator: "")
        }else{
            print("* ",terminator: "")
        }
    }
    print("")
}
