//
//  ViewController.swift
//  HamburgesasMundo
//
//  Created by Victor Chisvert Amat on 6/11/15.
//  Copyright © 2015 Vicchiam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let coleccionDePaises : ColeccionDeDaises = ColeccionDeDaises()
    let coleccionDeHamburguesas : ColeccionDeHamburgesas = ColeccionDeHamburgesas()
    let colores : Colores = Colores()

    @IBOutlet weak var labelPais: UILabel!
    
    @IBOutlet weak var labelHamburguesa: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func actionCambio() {
        
        labelPais.text=coleccionDePaises.obtenPais()
        labelHamburguesa.text=coleccionDeHamburguesas.obtenHamburguesa()
        
        let color : UIColor=colores.regresarColor()
        view.backgroundColor=color
        view.tintColor=color
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

