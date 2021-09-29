var arr = [10,10,10]
var fst=arr[0],snd = Int.min
for i in 1..<arr.count{
    if(arr[i] > fst){
        snd = fst
        fst = arr[i]
    }else{
        if(arr[i] > snd && arr[i] != fst){
            snd = arr[i]
        }
    }
}
if(fst == snd || (snd == Int.min && (arr.firstIndex(of: Int.min) == nil) )){
    print("Not Found")
}else{
    print(snd)
}
