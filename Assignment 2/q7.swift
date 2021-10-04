func SandglassPattern(_ no : Int){
  for i in 0...no-1{
    if i <= (no/2)-1{
      print( String.init(repeating: " ", count:i) + String.init(repeating: "* ", count:(no/2)-i))
    }
    else
    {
      print(String.init(repeating: " ",count:((no-i)-1)) + String.init(repeating: "* ",count:i-(no/2)+1))
    }
  }
}
print("Enter even no of rows:")
SandglassPattern(Int (readLine()!) ?? 0)
