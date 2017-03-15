//
//  ViewController.swift
//  CalculatorIMC
//
//  Created by Student on 3/15/17.
//  Copyright © 2017 Arthur Sampaio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var peso: UITextField!

    @IBOutlet weak var altura: UITextField!
    
    
    
    @IBOutlet weak var out: UITextView!
    
    
    @IBAction func botao() {
        
        let alt = Double(self.altura.text!)
        let pes = Double(self.peso.text!)
        
        let imc = pes! / pow(alt!, 2.0)
        
        
        self.out.text = String(format: "%.2f", imc)
        
        self.peso.text = ""
        self.altura.text = ""
        
     
        
        
        
        
    }
    
}

