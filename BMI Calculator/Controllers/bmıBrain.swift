

import Foundation
import UIKit

struct BmıBrain{
    func bmıCalculate(n1:Float,n2:Float)-> String{
        return String(format:"%.2f",n1/(n2*n2))
    }
    func returnColor(bmı:String)->UIColor{
    
        switch Float(bmı) ?? 0.0{
        case ..<18.5:
            return UIColor(red:255/255, green:120/255, blue:196/255, alpha: 1)
            
           
        case 18.5..<25:
          return UIColor(red:255/255, green:174/255, blue:255/255, alpha: 1)
           
         
        case 25..<30:
          return UIColor(red:255/255, green:189/255, blue:247/255, alpha: 1)
           
           
        case 30..<35:
          return UIColor(red:255/255, green:221/255, blue:204/255, alpha: 1)
          
        case 35..<40:
          return UIColor(red:255/255, green:238/255, blue:204/255, alpha: 1)
          
          
        case 40... :
          return UIColor(red:255/255, green:236/255, blue:236/255, alpha: 1)
           
           
        default :
          return UIColor.blue
        }
    }
    func returnText(bmı:String)->String{
        switch Float(bmı) ?? 0.0{
        case ..<18.5:
          
         return  "Kürdandan kollar"
          
        case 18.5..<25:
          return "ohhhh maşallah"
           
        case 25..<30:
           return "davar gibisin"
           
        case 30..<35:
          return "OBBEEZZZ"
          
        case 35..<40:
           return "AZZ YEE AZZZ"
           
        case 40... :
           return "DÜNYA DAHA HAFİF"
           
        default :
            return ""
            
        }
        
    }
    
    
    
    
}
