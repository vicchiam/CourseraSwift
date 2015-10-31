//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {

    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init( velocidadIncial : Velocidades){
        self=velocidadIncial
    }

}

class Auto{
    
    var velocidad : Velocidades
    
    init(){
        //VelocidadAlta para que empieze por Apagado
        self.velocidad = Velocidades(velocidadIncial: Velocidades.VelocidadAlta)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        let res: String
        if velocidad == Velocidades.Apagado{
            velocidad = Velocidades.VelocidadBaja
            res="Velocidad Baja"
        }
        else if velocidad == Velocidades.VelocidadBaja{
            velocidad = Velocidades.VelocidadMedia
            res="Velocidad Media"
        }
        else if velocidad == Velocidades.VelocidadMedia{
            velocidad = Velocidades.VelocidadAlta
            res="Velocidad Alta"
        }
        else{
            velocidad = Velocidades.Apagado
            res="Apagado"
        }
        
        return (velocidad.rawValue,res)
        
    }
    
}

var auto = Auto()

for i in 0...19 {

    var aux=auto.cambioDeVelocidad()
    print("\(i+1). \(aux.actual), \(aux.velocidadEnCadena)")

}