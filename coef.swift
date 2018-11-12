import Foundation

func citire()->[Float]
{
    print("a=")
    let s = readLine()
    if let sa = s{
        let x = Float(sa)
        if let _a = x{
            print("b=")
            let s = readLine()
            if let sa = s{
                let x = Float(sa)
                if let _b = x{
                    print("c=")
                    let s = readLine()
                    if let sa = s{
                        let x = Float(sa)
                        if let _c = x{
                            return [_a, _b, _c]
                        }
                        else{
                            return [1, 1, 2]
                        }
                    }
                    else{
                        return [1, 1, 2]
                    }        
                    
                }
                else{
                    return [1, 1, 2]
                }
            }
            else{
                return [1, 1, 2]
            }        
        }
        else{
            return [1, 1, 2]
        }
    }
    else{
        return [1, 1, 2]
    }
}
//---------------------------------------------------------
func rezolva(coef: [Float], x1: inout [Float], x2: inout [Float])
{
   
    
    let delta = coef[1] * coef[1] - 4 * coef[0] * coef[2]
    
    if delta >= 0{
       x1.append ( (-coef[1] - sqrt(delta)) / (2 * coef[0]))
        x2.append( (-coef[1] + sqrt(delta)) / (2 * coef[0]))
       x1.append(Float(0.0))
        x2.append(Float(0.0))
     
    }
    else{
     x1.append ( (-coef[1]) / (2 * coef[0]) )
        x2.append ( (-coef[1]) / (2 * coef[0]))
       x1.append(-sqrt(-delta) / (2 * coef[0]))
      x2.append ( sqrt(-delta) / (2 * coef[0]))
      
    }
}
//---------------------------------------------------------
func tipareste(x1: [Float], x2: [Float])
{
    print("x1 = \(x1[0]) + \(x1[1])")
    print("x2 = \(x2[0]) + \(x2[1])")
}
//---------------------------------------------------------

func tipareste_coeficienti(_ coef:[Float])
{
    for x in coef {
        print(x)
    }
 
    
    var i=0
    while i<coef.count{
        print(coef[i])
        i=i+1
    }
    var i=0
    repeat{
              print(coef[i])
        i = i + 1  
    }while i < coef.count
}

var x1 = [Float]()
var x2 = [Float]()


let coef = citire()
tipareste_coeficienti(coef)


rezolva(coef: coef,x1:&x1,x2:&x2)
tipareste(x1: x1, x2: x2)