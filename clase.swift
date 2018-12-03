import Foundation

class t_ecuatie_grad2

{var a,b,c: Float
var x1_re,x1_im,x2_re,x2_im: Float

init(){
  a = 0
  b = 0
  c = 0
  x1_re = 0
  x1_im = 0
  x2_re = 0
  x2_im = 0
}

deinit{
    
}
init(_ _a: Float,_ _b: Float,_ _c:Float){
  a = _a
  b = _b
  c = _c
  x1_re = 0
  x1_im = 0
  x2_re = 0
  x2_im = 0
}
func citire(){
   
    
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
                            a = _a
                            b = _b
                            c = _c
                           
                        }
                        else{
                            a=1
                            b=2
                            c=1
                        }
                    }
                    else{
                            a=1
                            b=2
                            c=1
                    }        
                    
                }
                else{
                            a=1
                            b=2
                            c=1
                }
            }
            else{
                            a=1
                            b=2
                            c=1
            }        
        }
        else{
                            a=1
                            b=2
                            c=1
        }
    }
    else{
                            a=1
                            b=2
                            c=1
    }
}
//---------------------------------------------------------
func rezolva()
{
    let delta = b * b - 4 * a * c
    
    if delta >= 0{
        x1_re = (-b - sqrt(delta)) / (2 * a)
        x1_im = Float(0,0)
         x2_re = (-b + sqrt(delta)) / (2 * a)
         x2_im = Float(0,0)
        
        

    }
    else{
         x1_re = (-b) /  (2 * a)
         x1_im = -sqrt(delta) / (2 * a)
         x2_re = (-b) /  (2 * a)
         x2_im = sqrt(delta) / (2 * a)
        
     
    }
}
//---------------------------------------------------------
func tipareste()
{
    print("x1 = \(x1_re) + \(x1_im)")
    print("x2 = \(x2_re) + \(x2_im)")
}
//---------------------------------------------------------
}
var ec2 = t_ecuatie_grad2(2,3,4)
ec2.citire()
ec2.rezolva()
ec2.tipareste()
   