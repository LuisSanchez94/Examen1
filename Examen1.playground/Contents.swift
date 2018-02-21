//: Playground - noun: a place where people can play

import UIKit

/*
 
 LUIS ANTONIO SÁNCHEZ PÉREZ
 
 Pregunta 1)
 
 En cuando a la seguridad Swift nos da ventajas como tener estructuras y condiciones controladas
 por lo que se evita rupturas de seguridad lo que es una ventaja del lenguaje. En cuanto a la modernidad
 la manera escribir código es mucho más rápida. Y en cuanto al poder su distribución compila mucho más rápido por lo que corre en menos tiempo.
 
 
 Pregunta 2)
 
 El IDE mas usado para Swift, es XCODE, y sus secciones principales al abrir el programa puede ser su sección del debuger, y el area de escritura de código.
 
 Pregunta 3)
 
 No habria problema ya que XCODE hace compatibles los dos tipos de archivo mediante un puente (Bridge), lo que permite crear tipos de archivo Objective C para poder usarlos con nuestro codigo en Swift
 
 */



//PREGUNTA 1
func parejas(n: [Int], m: Int) -> Int {
    var resultado = 0
    
    for i in n {
        for j in n{
            if((i + j) == m){
                resultado = resultado + 1
                //print("{ \(i) , \(j) }")
            }
        }
    }
    return resultado/2
}


var m = 5
var numeros = [1,2,3,4,6]


var r1 = parejas(n: numeros, m:m)

print(" Resultado Uno \(r1)")



//PREGUNTA 3 Y 4
func palabras_cont(cadena: String) -> (palabras: Int, PrimeraPalabra: String){
    
    let f = cadena.characters.split{$0 == " "}.map(String.init)
    
    var resultado = 0
    for _ in f{
        resultado = resultado + 1;
    }
    
    return (resultado, f[0])
}


var cadena_String = "Hola mi nombre es Luis"

var r2 = palabras_cont(cadena: cadena_String)

print(" Resultado Dos \(r2)")




// PREGUNTA 5
enum Deportes{
    case Futbol (tamanobalon: Int)
    case CarrerasdeAuto (nombreFormula: String)
    case Hockey (sobreHielo: Bool)
    case Tennis (tipoCancha: String)
    case Natacion (estilo: String)
}


func dep(deporte: Deportes){
    
    switch deporte {
    case Deportes.Futbol(tamanobalon: 1...4):
        print ("Fútbol para niños")
    case Deportes.Futbol(tamanobalon: 5...999):
        print("Fútbol para Adultos")
    case Deportes.CarrerasdeAuto(nombreFormula: "Formula1"):
        print("Carrera de fórmula 1")
    case Deportes.CarrerasdeAuto(nombreFormula: _):
        print("Carreras que no conocemos")
    case Deportes.Hockey(sobreHielo: true):
        print("Hockey Sobre Hielo")
    case Deportes.Hockey(sobreHielo: false):
        print("Hockey pero no es Real")
    case Deportes.Tennis(tipoCancha: "Cemento"):
        print("Juego Rápido")
    case Deportes.Tennis(tipoCancha: "Cesped"):
        print("Juego Lento")
    case Deportes.Natacion(estilo: "Mariposa"):
        print("Dos brazos al mismo tiempo")
    case Deportes.Natacion(estilo: "Espalda"):
        print("Viendo para arriba")
    default:
        break
    }
}


dep(deporte: Deportes.Futbol(tamanobalon: 5))
dep(deporte: Deportes.CarrerasdeAuto(nombreFormula: "Nascar"))
dep(deporte: Deportes.Hockey(sobreHielo: true))


