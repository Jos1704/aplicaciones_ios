import UIKit

var datos:Array<Int> = Array<Int>([3,6,9,2,4,1])
for i in datos {
    if i < 5{
        print(i)
    }
}

func Suma(uno:Float,  dos:Float)-> String{
    let valor = uno + dos;
    return "La suma de  \(uno) +  \(dos) es:  \(valor)"
}

func potencia(base:Int, potencia:Int)->Int{
    var base1 = potencia;
    var total = base;
    repeat {
        total = total*base;
        base1 = (base1-1)
    } while (base1>1)
    return total
}

enum meses:Int {
    case enero, febrero, marzo, abril, mayo, junio, julio, agosto, septiembre, octubre, noviembre, diciembre
}
func numeroMes (mes:String)->String{
    return meses
}

let mes:meses = .marzo

switch mes {
case .enero:
    print("Enero es el mes numero: 1")
case .febrero:
    print("Febrero es el mes numero: 2")
case .marzo:
    print("Marzo es el mes numero: 3")
case .abril:
    print("Abril es el mes numero: 4")
case .mayo:
    print("Mayo es el mes numero: 5")
case .junio:
    print("Junio es el mes numero: 6")
case .julio:
    print("Julio es el mes numero: 7")
case .agosto:
    print("Agosto es el mes numero: 8")
case .septiembre:
    print("Septiembre es el mes numero: 9")
case .octubre:
    print("Octubre es el mes numero: 10")
case .noviembre:
    print("Noviembre es el mes numero: 11")
case .diciembre:
    print("Diciembre es el mes numero: 12")
    
}
numeroMes(mes: 3)
Suma(uno: 10.1, dos: 12.6)
potencia(base: 5, potencia: 2)
