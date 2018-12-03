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
func rezolva(_ coef: [Float]) -> [[Float]] 
{

    let delta = coef[1] * coef[1] - 4 * coef[0] * coef[2]
    
    if delta >= 0{
    return [[(-coef[1] - sqrt(delta)) / (2 * coef[0]), Float(0.0)], [(-coef[1] + sqrt(delta)) / (2 * coef[0]), Float(0.0)]]
      
    }
    else{
    return [[(-coef[1]) / (2 * coef[0]), -sqrt(-delta) / (2 * coef[0])], [(-coef[1]) / (2 * coef[0]), sqrt(-delta) / (2 * coef[0])]]
    }
}
//---------------------------------------------------------
func tipareste( x1: [[Float]])
{
    print("x1 = \(x1[0][0]) + \(x1[0][1])")
    print("x2 = \(x1[1][0]) + \(x1[1][1])")
}
//---------------------------------------------------------
func tipareste_coeficienti(_ coef: [Float])
{
/*
    for x in coef{
        print(x)
    }
    */
    
    /*
    var i = 0
    while i < coef.count{
        print(coef[i])
        i = i + 1
    }
     */
     
    var i = 0
        repeat{
            print(coef[i])
        i = i + 1
        } while i < coef.count
     
}
//----------------------------------------------------------
func calculeaza(_ citeste: ()->[Float],_ rezolva: ([Float])->[[Float]],_ tipareste: ([[Float]])->Void)
{
   let coef = citeste()


var x = rezolva(coef: coef)
tipareste(x: x) 
}

calculeaza(citire,rezolva,tipareste)