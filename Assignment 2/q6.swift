func RightPascalTriangle(_ no : Int){
  for i in 1...no{
    if i <= no/2{
      print(String.init(repeating: "*", count:(i)))
    }else{
      print(String.init(repeating: "*", count:(no-i)+1))
    }
  }
}
print("Enter odd no of rows:")
RightPascalTriangle(Int (readLine()!) ?? 0)
