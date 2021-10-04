func Diamond(_ no : Int){
  for i in 1...no{
    if i <= no/2{
      print( String.init(repeating: " ", count:((no/2)-i+1)) + String.init(repeating: "*", count:(i-1)*2+1))
    }else{
      print(String.init(repeating: " ", count:(i-((no/2)+1))) +  String.init(repeating: "*", count:(no-i)*2+1))
    }
  }
}
print("Enter odd no of rows:")
Diamond(Int (readLine()!) ?? 0)
