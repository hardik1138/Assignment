enum NoError : Error{
  case negative(String)
}
func checkNum(no : Int) throws{
  if(no < 0){
    throw NoError.negative("Eroor: \(no) is negative.")
  }else{
    print("\(no) is positive.")
  }
}
do{
  try checkNum( no : (Int(readLine()!) ?? 0))
}catch NoError.negative(let msg){
    print(msg)
  }
