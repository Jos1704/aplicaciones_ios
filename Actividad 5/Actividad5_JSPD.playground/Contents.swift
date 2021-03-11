import UIKit

class Persona {
    var nombre : String = ""
    var saludar:String = ""
    var caminar : Int = 0
    
    init(nombre:String, caminar:Int ) {
        self.nombre = nombre
        self.caminar = caminar
    }
    func Saludar(mensaje:String) {
        self.saludar = mensaje
    }
    func Caminar(pasos:Int) {
        self.caminar = pasos
    }
    
}

var humano = Persona(nombre: "Pedro Pica Piedra", caminar: 19)
print(humano.nombre, "Mucho Gusto", "Tu has caminado: ", humano.caminar, "pasos")


struct Pantalla {
    var alto  : Int
    var ancho : Int
    init(alto:Int, ancho:Int) {
        self.alto = alto
        self.ancho = ancho
    }
}

var pantalla = Pantalla(alto: 41, ancho: 70)
print("Anco", pantalla.ancho, "Alto", pantalla.alto)


extension Int {
    func horas() -> Int {
       return self*24*60
    }
}
3.horas()



extension String {
    func dias() -> String {
        return self
    }
    
}


let optional = ["11":1,"21":2,"31":3,"41":4,"51":51,"61":61,"71":71,"81":81]
var validator:Int?
 
validator = optional ["61"]

if let temp = validator{
    print("El numero esta aqui")
}else{
    print("Intenta de nuevo")
}


let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200]
var ciudad:Int?


ciudad = dias ["DF"]

if let tepm2 = ciudad{
    print("Los dias se han contado  ")
}else{
    print("Sin registro de ciudad")
}
