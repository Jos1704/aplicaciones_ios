import UIKit

prefix operator ^^^
var a:Decimal = 2
var b = 4

prefix func ^^^ (resultado:Int)
{
    let resultado = pow(a,b)
    print("El valor aumentado a la potencia es: ", resultado)
}
^^^4


infix operator |>
var coleccion:[Int] = [2,5,3,4]

coleccion.sort()
print("Los valores ordenados son: ",coleccion)





let numeros = [2,3,4,5]

class Multiplicar
{
    var values: [Int]
    init(v:[Int]) {
        self.values = v
    }
    
    subscript (key:Int)->Int{
        get
        {
            return values[key]
        }
        set(valMultiplicado)
        {
            values[key] = valMultiplicado * 2
        }
    }
}

var val1 = Multiplicar(v: numeros)

val1[2] = val1[2]
val1.values
print("El valor en la posicion 2 multiplicado por 2 es: ", val1[2])




struct enemigos
{
    var positionY:CGPoint
    var positionX:CGPoint
    
    init(posY:CGPoint, posX:CGPoint) {
        self.positionY = posY
        self.positionX = posX
    }
    
    func QuePosicion() -> (CGPoint, CGPoint) {
        return(self.positionY, self.positionX)
    }

}



		
let coleccionData = ["A":1, "B":2,"C":3]

func ExisteValor (key:String)
{
    guard let existe = coleccionData [key] else {
        print ("No se encuentra")
        return
    }
    
    print("existe \(existe)")
}

ExisteValor(key: "D")
coleccionData ["D"]
