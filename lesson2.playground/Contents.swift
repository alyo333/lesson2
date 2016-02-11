
import UIKit

class currencyUnit {
   var currency: String
    
    init () {
        currency = ""
    }
}


class convertMoney {
    func convert(var value: Float, startCurrency: currencyUnit, targetCurrency: currencyUnit) -> (convertedValue: Float, targetCurrency: currencyUnit) {
        switch startCurrency.currency{
            case "euro":
                switch targetCurrency.currency{
                    case "dollar": value=value*1.11
                    default: break
                }
            case "dollar":
                switch targetCurrency.currency{
                    case "euro": value=value*0.9
                    default: break
                }
        default: break
        }
        
        return(value, targetCurrency)
    }
    
}


var dollar = currencyUnit()
dollar.currency = "dollar"

var euro = currencyUnit()
euro.currency = "euro"

var dollarToEuro=convertMoney().convert(500, startCurrency: dollar, targetCurrency: euro)
var euroToDollar=convertMoney().convert(500, startCurrency: euro, targetCurrency: dollar)




