//
//  Datos.swift
//  HamburgesasMundo
//
//  Created by Victor Chisvert Amat on 6/11/15.
//  Copyright © 2015 Vicchiam. All rights reserved.
//

import Foundation
import UIKit

class ColeccionDeDaises{

    var paises : [String]
    
    init(){
        paises = ["España","Portugal","Francia","Italia","Alemania",
            "Belgica","Holanda","Irlanda","Gran Bretaña","Dinamarca",
            "Suecia","Finlandia","Noruega","Mexico","Ecuador",
            "Venezuela","Colombia","Bolivia","Brasil","Chile"]
    }
    
    func obtenPais() -> String {
        let pos : Int = Int(arc4random()) % paises.count
        return paises[pos]
    }

}


class ColeccionDeHamburgesas{

    var hamburguesas : [String]
    
    init(){
        hamburguesas = ["Hamburguesa Normal","Hamburguesa con queso","Hamburguesa completa","Hamburguesa con huevo","Hamburguesa doble",
            "Hamburguesa de pollo","Hamburguesa vegetal","Hamburguesa picante","Hamburguesa especial","Hamburguesa light",
            "Hamburguesa vegetariana","Hamburguesa con tortilla","Hamburguesa con mahonesa","Hamburguesa mixta","Hamburguesa extra grande",
            "Hamburguesa rellena","Hamburguesa de pescado","Hamburguesa con patatas","Hamburguesa con pepinillos","Hamburguesa Pequeña"]
    }
    
    func obtenHamburguesa() -> String {
        let pos : Int = Int(arc4random()) % hamburguesas.count
        return hamburguesas[pos]
    }
    
}

struct Colores {

    let colores = [
            UIColor(red: 210/255.0, green: 90/255.0, blue: 45/255.0, alpha: 1),
            UIColor(red: 40/255.0, green: 170/255.0, blue: 45/255.0, alpha: 1),
            UIColor(red: 3/255.0, green: 50/255.0, blue: 210/255.0, alpha: 1),
            UIColor(red: 210/255.0, green: 190/255.0, blue: 5/255.0, alpha: 1)]
    
    func regresarColor() ->UIColor {
        let pos : Int = Int(arc4random()) % colores.count
        return colores[pos]
    }

}