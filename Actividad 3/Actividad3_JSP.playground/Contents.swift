import UIKit

//enteros
var enteroUno = 4;
let enteroDos:Int = 17;
// decimal
var floatUno = 4.17;
let floatDos:Float = 17.4;
// texto
var stringUno = "Josue";
let stringDos:String = "Patiño";

//asociacìon para string
stringUno = "Pedro"
//asociacìon para int
enteroUno = 20;


var numeros:Array<Int> = Array<Int>();
numeros.append(1)
numeros.append(2)
numeros.append(3)
numeros.append(4)
numeros.append(5)
numeros.append(6)
numeros.append(7)
numeros.append(8)
numeros.append(9)
numeros.append(10)
numeros.count

var diaSemana:Dictionary<Int, String> = Dictionary<Int, String>();
diaSemana = [1: "Lunes"]
diaSemana = [2: "Martes"]
diaSemana = [3: "Miercoles"]
diaSemana = [4: "Jueves"]
diaSemana = [5: "Viernes"]
diaSemana = [6: "Sabado"]
diaSemana = [7: "Domingo"]
print("Los dias son: \(diaSemana)")


var datos:Array<Int> = Array<Int>([3,6,9,2,4,1])
for i in datos {
    if i < 5{
        print(i)
    }
}
