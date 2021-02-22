import UIKit

var datos:Array<Int> = Array<Int>([3,6,9,2,4,1])
for i in datos {
    if i < 5{
        print(i)
    }
}
5^2
func Suma(uno:Float,  dos:Float)-> String{
    let valor = uno + dos;
    return "La suma de  \(uno) +  \(dos) es:  \(valor)"
}

enum meses:Int {
    case enero = 1, febrero = 2, marzo=3, abril=4, mayo=5, junio=6, julio=7, agosto=8, septiembre=9, octubre = 10, noviembre = 11, diciembre = 12
}
func numeroMes (mes:Int){
    meses.init(rawValue: mes)
    
    
    //print(meses.init(rawValue: mes))
    
}
numeroMes(mes: 3)
Suma(uno: 10.1, dos: 12.6)
//potencia(base: 5, potencia: 2)
