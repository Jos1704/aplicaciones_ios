import UIKit

var costo_referencia:[Float] = [8.3,10.5,9.9]
var contador:Int = 0
for i in costo_referencia{
    costo_referencia[contador] = ((i*16)/100)+i
    contador += 1
}
print("Costo mas inpuesto del 16%: ", costo_referencia)


let sumaUno = { (uno: Int, dos:Int )-> Int in return uno + dos }

func sumaDos (unoFun:Int, dosFun:Int, tresFun:Int) ->Int {
   return sumaUno(unoFun, dosFun) + tresFun
}
sumaDos(unoFun: 10, dosFun:11, tresFun:14)

func gerencia <Type>(param:Type)-> Type{
    return Type.self as! Type
}
func intercambio <Tipo>(param:Tipo) -> Tipo{
    let _: Tipo
    return Tipo.self as! Tipo
}

extension Array {
    func transformar<T>(index:T, acumula:(T,Element) -> T)->T {
        var respuesta:T = index
        for valor in self {
            respuesta = acumula(respuesta, valor)
        }
        return respuesta
    }
}
var datos = [3,7,9,2]
var letras = ["a", "b","c", "d"]
datos.transformar(index: 0){
    (a,b) in a + b
}
letras.transformar(index: ""){
    (a,b) in a + b
}

	
var precios =  [4.2, 5.3, 8.2, 4.5]
var impuesto = precios.map{
    res in return res * 1.16
}
impuesto

var precio_menor = impuesto.filter{
    res in res > 6.0
}
precio_menor
