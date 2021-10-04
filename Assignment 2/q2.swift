print("Enter no of rows:")
var n = Int (readLine()!)
var c = 0,i=0
while i<n{
    if c > i{
        print("")
        c = 0
        i += 1
    }else{
        print("*", terminator: "")
        c += 1
    }
}
