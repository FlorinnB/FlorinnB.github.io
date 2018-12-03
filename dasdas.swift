import Foundation

class t_set_of_primes{
    var primes: Set<Int>
    init(){
        primes = []
    }
    
    init(_ x: Int){
        primes = [x]
    }
    
    init(_ x: Int, _ y: Int){
    primes = []
    for i in stride(from: x, to: y + 1, by: 1){
            if is_prime(i){
                primes.insert(i)
            }
        }
    }
    
    deinit{
        primes = []
    }
    
    func is_prime(_ x: Int)->Bool{
        /*
        var i = 2
        while i < Int(sqrt(Double(x))){
            if x % i == 0{
               return false
            }
        i = i + 1   
        }
        return true
        */
        
            for i in stride(from: 2, to: Int(sqrt(Double(x))) + 1, by: 1){
                 if x % i == 0{
                   return false
                }
            }
        return true
        }
        
    
    func add(_ x: Int){
    if is_prime(x){
        primes.insert(x)}
    }
    func print_set(){
        var s = "The set is = { "
        for i in primes.sorted(){
            s = s + String(i) + " "
        }
        s = s + "}"
        print(s)
    }
    func contains(_ x: Int)->Bool{
        return primes.contains(x)
    }
   func union(_ a: t_set_of_primes){
       primes=primes.union(a.primes)
       
   } 
   func union2(_ a: (t_set_of_primes) -> t_set_of_primes){
       let tmp=t_set_of_primes()
       tmp.primes = primes.union(a.primes)
   }
}

let s_opt = readLine()
if let s = s_opt{
    switch s{
        case "1": // testam constructorul implicit
            let a = t_set_of_primes()
            a.print_set()
        case "2": // testam constructorul cu 1 parametru
            let a = t_set_of_primes(2)
            a.print_set()
        case "3": // testam add
            let a = t_set_of_primes()
            a.add(2)
            a.add(7)
            a.add(4)
            a.print_set()
        case "4": // testam constructorul cu 1 parametru
            let a = t_set_of_primes(2, 41)
            a.print_set()
             case "5": // testam contains
             let k=11
            let a = t_set_of_primes(2, 41)
            if a.contains(k){
                print("Elementul \(k) se gaseste in multime")
            }
            else{
                print("Elementul \(k) nu se gaseste in multime")
            }
            a.print_set()
              case "6": // testam reuneste
            let a = t_set_of_primes(2, 41)
            let b = t_set_of_primes(90, 100)
            a.union(b)
            a.print_set()
              case "7": // testam reuneste2
            let a = t_set_of_primes(2, 41)
            let b = t_set_of_primes(90, 100)
           var c = t_set_of_primes(200, 300)
            c = a.union2(b)
            c.print_set()
        default:
             print("invalid option")
        
    }
}
else{
    print("no input")
}