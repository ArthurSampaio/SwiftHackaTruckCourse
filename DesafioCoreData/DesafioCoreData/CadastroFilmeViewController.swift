//
//  CadastroFilmeViewController.swift
//  DesafioCoreData
//
//  Created by Francini Roberta de Carvalho on 11/1/16.
//  Copyright © 2016 Francini Carvalho. All rights reserved.
//

import UIKit

// Controller da view de cadastro de filmes, acionada pelo botão "+"
class CadastroFilmeViewController: UIViewController {
    
    
    @IBOutlet weak var nomeTextField: UITextField!
    
    @IBOutlet weak var anoTextField: UITextField!
    
    
    @IBOutlet weak var diretorTextField: UITextField!
    
    var ano : Int16 {
        
        if let text = anoTextField.text {
            if let intValue = Int16(text){
                return intValue
            }
        }
        return 0
    }

    @IBAction func addMovie(_ sender: Any) {
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
